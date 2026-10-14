/*
Antique Celebrity Sounds Instruments
Queries
Kevin Tieu, CS 325, Fall 2020
*/

-- Query 1: Competency level distribution (helps plan class offerings)
PROMPT
PROMPT === Query 1: Students by competency level ===
SELECT CompetencyLevel,
       COUNT(*) AS TotalStudents,
       ROUND(AVG(LessonPrice), 2) AS AvgLessonPrice
FROM MusicLesson
GROUP BY CompetencyLevel
ORDER BY TotalStudents DESC;

-- Query 2: Customers with overdue or unpaid balances
PROMPT
PROMPT === Query 2: Customers with overdue or unpaid payments ===
SELECT c.CustomerID,
       c.CustomerName,
       c.CustomerEmail,
       c.CustomerPhone,
       p.PaymentID,
       p.Amount,
       p.PaymentStatus,
       p.PaymentDate
FROM Customer c
JOIN Payment p ON c.CustomerID = p.CustomerID
WHERE p.PaymentStatus IN ('Overdue', 'Pending', 'Partial')
ORDER BY p.PaymentDate, c.CustomerName;

-- Query 3: Celebrity / fan donations
PROMPT
PROMPT === Query 3: Instrument donations ===
SELECT d.DonationID,
       d.DonatorName,
       d.InstrumentName,
       d.DonationDate,
       d.Notes
FROM DonationLog d
ORDER BY d.DonationDate DESC;

-- Query 4: Open or in-progress repair requests
PROMPT
PROMPT === Query 4: Active repair requests ===
SELECT r.RepairID,
       c.CustomerName,
       r.InstrumentName,
       r.RepairType,
       r.RequestDate,
       r.RepairPrice,
       r.Status
FROM InstrumentRepair r
JOIN Customer c ON r.CustomerID = c.CustomerID
WHERE r.Status IN ('Open', 'In Progress')
ORDER BY r.RequestDate;

-- Query 5: Upcoming or recent music receptions
PROMPT
PROMPT === Query 5: Music receptions ===
SELECT r.ReceptionID,
       r.MusicianName,
       r.InstrumentName,
       r.ReceptionDate,
       r.VoteCountTotal,
       c.CustomerName AS Participant
FROM MusicReception r
LEFT JOIN Customer c ON r.CustomerParticipant = c.CustomerID
ORDER BY r.ReceptionDate DESC;
