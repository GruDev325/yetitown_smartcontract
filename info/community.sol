  // public
  function flipPresaleState() public onlyOwner {
        communitySaleIsActive = !communitySaleIsActive;
  }


      function communityMint(uint256 _mintAmount) public payable {
        uint256 supply = totalSupply();
        require(communitySaleIsActive, "CommunitySale is not active");
        require(supply <= maxCommunitySupply);
        require(communityList[msg.sender].isApproved, "You are not in the communityList to mint Yetis.");
        require(_mintAmount > 0, "Must at least mint 1 yeti");
        require(_mintAmount <= maxMintAmount, "Cannot mint more than 3 yetis at once");

        require((supply + _mintAmount) < maxCommunitySupply, "Cannot exceed max number of communitysale yetis");
        require(communitylist[msg.sender].reservedQuantity >= _mintAmount, "Insufficient reserved communitysale quantity");

        require(msg.value == cost * _mintAmount, "Ether value sent is not correct");

        communitylist[msg.sender].reservedQuantity -= _mintAmount;

        for (uint i = 1;
            i <= _mintAmount;
            i++) {
            require((supply + i) < maxCommunitySupply, "Cannot exceed max community supply");

            if (!_exists(supply + i)) {
                _safeMint(msg.sender, supply + i);
            }
        }
    }