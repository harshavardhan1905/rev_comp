import { useState } from 'react'
import './App.css'
import './assets/css/styles.css'
import Login from './pages/login'
import SuperAdminDashboard from './dashboards/superAdminDashboard'
import HrDashboard from './dashboards/hrDashboard'
import AdminDashboard from './dashboards/adminDashboard'
import { Routes, Route } from "react-router-dom";
import Candidates from './components/SuperAdminComps/Candidates'
import AdminCandidates from './components/AdminComps/Candidates'

function App() {
  return (
    <>
     
      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/superadmin/dashboard" element={<SuperAdminDashboard />} />
        <Route path="/hr/dashboard" element={<HrDashboard />} />
        <Route path="/sales/dashboard" element={<HrDashboard />} />
        <Route path ="/candidates" element={<Candidates/>} />
        <Route path = "/admin/dashboard" element={<AdminDashboard />} />

      {/* <CANDIDATES></CANDIDATES> */}
      <Route path="candidates" element={< AdminCandidates/>} />
      </Routes>

    </>
  )
}

export default App;
