// Return an array of companies that belong to fund 2.
function companiesByFund(entities, fundId) {
	const companiesArray = Object.values(entities.company)
	const filteredCompanies = companiesArray.filter((company) => company.fund_id === fundId)

	return filteredCompanies //returns array of fund 2 companies when fundId === 2
}