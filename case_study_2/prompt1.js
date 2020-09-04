// Return an array of fund objects in alphabetical order.
function alphabetizedFunds(entities) {
	const fundsArray = Object.values(entities.fund) //array of objects
	const alphabetizedFundsArray = fundsArray.sort((a, b) => a.name.localeCompare(b.name))

	return alphabetizedFundsArray
}