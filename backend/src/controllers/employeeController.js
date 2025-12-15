const db = require('../config/db');

exports.addEmployee = (req, res) => {

    const { name, designation, login_role, email, password } = req.body;

    // Validate 
    if (!name || !designation || !login_role || !email || !password) {
        return res.status(400).json({ message: "All fields are required" });
    }

    const sql = `
        INSERT INTO emp (emp_name, emp_designation, login_role, email, password)
        VALUES (?, ?, ?, ?, ?)
    `;

    db.query(sql, [name, designation, login_role, email, password], (err, result) => {

        if (err) {
            console.error("Database Error:", err);
            return res.status(500).json({ message: "Database Insert Failed" });
        }

        return res.status(201).json({
            message: "Employee added successfully",
            employeeId: result.insertId
        });
    });
};
