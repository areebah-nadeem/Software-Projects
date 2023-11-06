const calculateBtn = document.getElementById("calculate-btn");
const loveResult = document.getElementById("love-result");

calculateBtn.addEventListener("click", function() {
	const yourName = document.getElementById("your-name").value.trim();
	const partnerName = document.getElementById("partner-name").value.trim();

	if (!yourName || !partnerName) {
		alert("Please enter both names!");
		return;
	}

	const loveScore = Math.floor(Math.random() * 100) + 1;

	if (loveScore === 100) {
		loveResult.textContent = `Your Test Results\n ${yourName} and ${partnerName}\n Your love score is ${loveScore}% - You found a Soulmates!`;
	} else if (loveScore > 70) {
		loveResult.textContent = `Your Test Results\n ${yourName} and ${partnerName}\n Your love score is ${loveScore}% - This is love `;
	} else if (loveScore > 30 && loveScore <= 70) {
		loveResult.textContent = `Your Test Results\n ${yourName} and ${partnerName}\n Your love score is ${loveScore}% - You can be good friends.`;
	} else {
		loveResult.textContent = `Your Test Results\n ${yourName} and ${partnerName}\n Your love score is ${loveScore}% - It is not love! \n You deserve a better person `;
	}
});
