const express = require("express");
const { getCandidates } = require("../controllers/candidateController");
const { addCandidate } = require("../controllers/addCandidate");
const {getEmpCandidates} = require("../controllers/getEmpCandidates")
const {updateStatus} = require("../controllers/updateCandidate")
const { deleteCandidate } = require("../controllers/deleteCandidate")
const editCandidate = require("../controllers/editCandidate");

const router = express.Router();

router.get("/", getCandidates);
router.post("/add", addCandidate);
router.get("/emp", getEmpCandidates)
router.put("/update-status", updateStatus)
router.delete("/delete/:id", deleteCandidate)
router.put("/update/:id", editCandidate);


module.exports = router;
