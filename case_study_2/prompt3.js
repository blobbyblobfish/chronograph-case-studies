// Return an array of fund names with an exited company.
function fundsWithExits(entities) {
    const funds = new Set() //ensures uniqueness

    const exitedCompaniesArray = Object.values(entities.company).filter((company) => company.exited)

    exitedCompaniesArray.forEach(company => { //for each exited company, add their fund to the Set
        funds.add(entities.fund[company.fund_id])
    })

	return Array.from(funds) //return an array from the Set
}