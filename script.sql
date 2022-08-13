/*1. a. Which prescriber had the highest total number
of claims (totaled over all drugs)? Report the npi and 
the total number of claims.*/
Select 
npi,
SUM(total_claim_count) as total_claims
from prescription
Group by npi
Order by total_claims DESC;
--Answer: 1881634483, 99707
/*b. Repeat the above, but this time report the 
nppes_provider_first_name, nppes_provider_last_org_name, 
specialty_description, and the total number of claims.*/
Select p1.total_claim_count, p2.nppes_provider_last_org_name,
p2.nppes_provider_first_name,p2.specialty_description
FROM prescription AS p1
Inner Join prescriber AS p2
On p1.npi=p2.npi
ORDER by p1.total_claim_count DESC;
--Answer: David Coffey, 4538
/*1. a. Which prescriber had the highest total number
of claims (totaled over all drugs)? Report the npi and 
the total number of claims.*/
Select npi, COUNT (npi) as npi_count
from prescription
Group by npi
Order by npi_count DESC;
--Answer: 1356305197, 379 claims
/*b. Repeat the above, but this time report the 
nppes_provider_first_name, nppes_provider_last_org_name, 
specialty_description, and the total number of claims.*/

