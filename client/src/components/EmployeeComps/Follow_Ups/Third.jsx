import React, { useState, useEffect } from "react";
import axios from "axios";

export default function Third() {
  const [candidates, setCandidates] = useState([]);
  const empId = Number(localStorage.getItem("id"));

  useEffect(() => {
    axios
      .get("https://rev-comp-backend.onrender.com/api/candidates")
      .then((response) => setCandidates(response.data))
      .catch((error) =>
        console.log("There was an error fetching candidates: " + error)
      );
  }, []); // <-- FIXED: dependency array

  // FORMAT DATE
  const formatDate = (dateString) => {
    if (!dateString) return "—";
    const date = new Date(dateString);
    return `${String(date.getDate()).padStart(2, "0")}-${String(
      date.getMonth() + 1
    ).padStart(2, "0")}-${date.getFullYear()}`;
  };

  // CHECK DATE IS PAST (overdue follow-up)
  const isPastDate = (dateString) => {
    if (!dateString) return false;

    const today = new Date();
    const followUpDate = new Date(dateString);

    today.setHours(0, 0, 0, 0);
    followUpDate.setHours(0, 0, 0, 0);

    return followUpDate < today;
  };

  // FILTER PENDING THIRD LEVEL CANDIDATES
  const pendingCandidates = candidates.filter(
    (candidate) =>
      candidate.third_f_status === "PENDING" &&
      isPastDate(candidate.third_f_date) &&
      candidate.assigned_emp_id === empId
  );

  return (
    <div className="container mt-4">
      <h5 className="mt-4">Third Follow-Up Pending</h5>

      <div className="table-wrapper mt-3 table-wrap">
        <table className="table table-bordered table-hover table-follow-ups">
          <thead className="table-dark">
            <tr>
              <th>ID</th>
              <th>Domain</th>
              <th>Company</th>
              <th>Website</th>
              <th>Email</th>
              <th>Phone</th>
              <th>Registered</th>
              <th>3rd Follow-up</th>
              <th>Status</th>
              {/* <th>Assigned Emp</th> */}
              <th>Employee</th>
              <th>Country</th>
            </tr>
          </thead>

          <tbody>
            {pendingCandidates.length > 0 ? (
              pendingCandidates.map((candidate) => (
                <tr key={candidate.candidate_id}>
                  <td>{candidate.candidate_id}</td>
                  <td>{candidate.comp_domain}</td>
                  <td>{candidate.comp_name}</td>
                  <td>
                    <a
                      href={`https://${candidate.website}`}
                      target="_blank"
                      rel="noreferrer"
                    >
                      {candidate.website}
                    </a>
                  </td>
                  <td>{candidate.email}</td>
                  <td>{candidate.phone}</td>
                  <td>{formatDate(candidate.date_of_register)}</td>

                  <td style={{ color: "red", fontWeight: "bold" }}>
                    {formatDate(candidate.third_f_date)}
                  </td>

                  <td>{candidate.third_f_status}</td>
                  {/* <td>{candidate.assigned_emp_id}</td> */}
                  <td>{candidate.emp_name}</td>
                  <td>{candidate.country_name}</td>
                </tr>
              ))
            ) : (
              <tr>
                <td colSpan="12" className="text-center text-muted">
                  <strong>🎉 No Pending Follow Ups</strong>
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
}
