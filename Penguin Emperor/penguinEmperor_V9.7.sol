// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity =0.6.12;

library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}


interface PenguinNests is IERC20 {
    function leave(uint256 share) external;
}


contract PenguinDatabase {

    struct PenguinInfo{
        string nickname;
        string color;
        bool isRegistered;
        uint256 style;
    }

    mapping (address => PenguinInfo) public penguDB;
    mapping (string => bool) public nicknameDB;

    function registerYourPenguin(string memory _nickname, string memory _color, uint256 _style) external {
        // Penguins can only register their nickname once. Each nickname must be unique.
       require(penguDB[msg.sender].isRegistered != true);
       require(nicknameDB[_nickname] != true, "Choose a different nickname, that one is already taken.");
       PenguinInfo storage currentPenguinInfo = penguDB[msg.sender];
       currentPenguinInfo.nickname = _nickname;
       currentPenguinInfo.color = _color;
       nicknameDB[_nickname] = true;
       currentPenguinInfo.style = _style;
       currentPenguinInfo.isRegistered = true;
    }

    function changeStyle (uint256 _newStyle) external {
        penguDB[msg.sender].style = _newStyle;
    }

    function changeColor (string memory _newColor) external {
        penguDB[msg.sender].color = _newColor;
    }

    function changeNickname (string memory _newNickname) external {
        require(nicknameDB[_newNickname] != true, "Choose a different nickname, that one is already taken.");
        string memory currentNickname = penguDB[msg.sender].nickname;
        nicknameDB[currentNickname] = false;
        nicknameDB[_newNickname] = true;
        penguDB[msg.sender].nickname = _newNickname;
    }

    function nickname(address penguinAddress) external view returns(string memory){
        return penguDB[penguinAddress].nickname;
    }

    function color(address penguinAddress) external view returns(string memory){
        return penguDB[penguinAddress].color;
    }

    function isRegistered(address penguinAddress) external view returns(bool){
        return penguDB[penguinAddress].isRegistered;
    }

    function style(address penguinAddress) external view returns(uint256){
        return penguDB[penguinAddress].style;
    }

}


contract PenguinEmperor {
  using SafeMath for uint256;

  address public pefi;
  address public nest;
  address public admin;
  address public penguinDatabase;

  address public currentEmperor;
  uint256 public currentEmperorBid;

  uint256 public jackpotFeeBP;
  uint256 public nestFeeBP;
  uint256 public jackpot; //current jackpot size in iPEFI
  uint256 public totalNestDistribution; //total PEFI sent to NEST

  uint256 public startDate;
  uint256 public finalDate;

  uint256 public openingBid;
  uint256 public minBidIncrease;
  uint256 public maxBidIncrease;
  uint256 public poisonFee;
  uint256 public poisonDuration;
  uint256 public poisonCooldown;
  uint256 public poisonSplitToNest = 2000;
  uint256 public poisonSplitToJackpot = 8000;
  uint256 public timesCrownStolen;
  bool public jackpotClaimed;

  address[5] public topEmperors;
  uint256[5] public longestReigns;
  uint256[5] public jackpotSplit;

  mapping(address => playerInfo) public playerDB;
  mapping(address => uint256) public lastTimePoisoned;
  mapping(address => address) public lastPoisonedBy;
  mapping(address => uint256) public timesPoisoned;

  event CrownStolen(address indexed newEmperor);
  event PefiDistributed(uint256 amountPEFI);
  event JackpotClaimed(uint256 jackpotSize);
  event EmperorPoisoned(address indexed poisonedEmperor, address indexed poisoner, uint256 timePoisoned);

constructor (address _pefi,
 address _nestAddress,
 address _penguinDatabase,
 uint256 _jackpotFeeBP,
 uint256 _nestFeeBP,
 uint256[5] memory _jackpotSplit,
 uint256 _startDate,
 uint256 _competitionDuration,
 uint256 _openingBid,
 uint256 _minBidIncrease,
 uint256 _maxBidIncrease,
 uint256 _poisonFee,
 uint256 _poisonDuration,
 uint256 _poisonCooldown)
public {
  uint256 jackpotTotal;
  for(uint256 i = 0; i < 5; i++) {
    jackpotTotal = jackpotTotal.add(_jackpotSplit[i]);
  }
  require(jackpotTotal == 10000, "bad jackpotSplit input");
  require(minBidIncrease <= maxBidIncrease, "invalid bidIncrease values");

  pefi = _pefi;
  nest = _nestAddress;
  penguinDatabase = _penguinDatabase;
  startDate = _startDate;
  finalDate = _startDate.add(_competitionDuration);
  jackpotFeeBP = _jackpotFeeBP;
  jackpotSplit = _jackpotSplit;
  nestFeeBP = _nestFeeBP;
  openingBid = _openingBid;
  minBidIncrease = _minBidIncrease;
  maxBidIncrease = _maxBidIncrease;
  poisonFee = _poisonFee;
  poisonDuration = _poisonDuration;
  poisonCooldown = _poisonCooldown;
  admin = msg.sender;
}


struct playerInfo {
    uint256 timeAsEmperor;
    uint256 lastCrowningBlockTimestamp;
}

modifier stealCrownCheck() {
    /*Checks for the following conditions:
    0. Check to see that the competiton has started.
    A. Check to see that the competiton hasn't ended.
    B. The msg.sender registered their Penguin.
    C. The msg.sender isn't the current Emperor.
    D. The bid is enough to dethrone the currentEmperor.
    E. Sender is not a contract
    F. Sender was not recently poisoned.
    */
    require(block.timestamp > startDate, "The competiton hasnt started.");
    require(block.timestamp < finalDate, "The competiton is over.");
    require(PenguinDatabase(penguinDatabase).isRegistered(msg.sender), "Please register your Penguin first.");
    require(msg.sender != currentEmperor, "You are already the King of Penguins.");
    require(msg.sender == tx.origin, "EOAs only");
    require(block.timestamp >= (lastTimePoisoned[msg.sender].add(poisonDuration)), "You were poisoned too recently");
    _;
}

modifier onlyAdmin() {
  require(msg.sender == admin);
  _;
}

function safeIPEFITransfer(address _to, uint256 _amount) internal {
    uint256 ipefiBal =  PenguinNests(nest).balanceOf(address(this));
    bool transferSuccess = false;
    if (_amount > ipefiBal) {
        transferSuccess = PenguinNests(nest).transfer(_to, ipefiBal);
    } else {
        transferSuccess = PenguinNests(nest).transfer(_to, _amount);
    }
    require(transferSuccess, "safeIPEFITransfer: transfer failed");
    }

function stealCrown(uint256 _amount) public stealCrownCheck() {
    //transfer iPEFI from the new emperor to this contract
    PenguinNests(nest).transferFrom(msg.sender, address(this), _amount);
    _stealCrown(_amount);
}

function stealCrownAndPoison(uint256 _amount) public stealCrownCheck() {
    require(canBePoisoned(currentEmperor), "This emperor was already recently poisoned");
    //transfer iPEFI from the new emperor to this contract
    uint256 poisonCost = poisonCost();
    PenguinNests(nest).transferFrom(msg.sender, address(this), _amount.add(poisonCost));
    lastTimePoisoned[currentEmperor] = block.timestamp;
    lastPoisonedBy[currentEmperor] = msg.sender;
    emit EmperorPoisoned(currentEmperor, msg.sender, block.timestamp);
    _sendToNest(poisonCost.mul(poisonSplitToNest).div(10000));
    jackpot = jackpot.add(poisonCost.mul(poisonSplitToJackpot).div(10000));
    timesPoisoned[currentEmperor] += 1;
    _stealCrown(_amount);

}

function claimJackpot() public {

    require(block.timestamp > finalDate, "Competition still running");
    require(!jackpotClaimed, "Jackpot already claimed");
    jackpotClaimed = true;
    emit JackpotClaimed(jackpot);

    //Keeps track of the time (in seconds) for which the lastEmperor held the crown.
    //nearly identical to logic above, but uses finalDate instead of block.timestamp
    playerDB[currentEmperor].timeAsEmperor = playerDB[currentEmperor].timeAsEmperor.add(finalDate.sub(playerDB[currentEmperor].lastCrowningBlockTimestamp));

    //Checks to see if the final Emperor is within the top 5 (in terms of total time as Emperor)
    _updateTopEmperors(currentEmperor);

    //split jackpot among top 5 emperors
    for(uint256 i = 0; i < 5; i++) {
        safeIPEFITransfer(topEmperors[i], jackpot.mul(jackpotSplit[i]).div(10000));
    }

    //refund last bid
    safeIPEFITransfer(currentEmperor, currentEmperorBid);
}

function _stealCrown(uint256 _amount) internal {
    if(currentEmperor == address(0)) {
        require(_amount == openingBid, "must match openingBid");
    } else {
        require(_amount >= (currentEmperorBid.add(minBidIncrease)) && _amount <= (currentEmperorBid.add(maxBidIncrease)), "Bad bid");

        uint256 lastEmperorBidMinusFees = currentEmperorBid.mul(10000 - (jackpotFeeBP + nestFeeBP)).div(10000);
        uint256 lastEmperorBidFeeForJackpot = currentEmperorBid.mul(jackpotFeeBP).div(10000);
        uint256 lastEmperorBidFeeForNests = currentEmperorBid.mul(nestFeeBP).div(10000);

        //Keeps track of the time (in seconds) for which the lastEmperor held the crown.
        playerDB[currentEmperor].timeAsEmperor = playerDB[currentEmperor].timeAsEmperor.add(block.timestamp.sub(playerDB[currentEmperor].lastCrowningBlockTimestamp));

        //Checks to see if the last Emperor is within the top 5 (in terms of total time as Emperor)
        _updateTopEmperors(currentEmperor);

        //swap iPEFI to PEFI and distribute to the nest
        _sendToNest(lastEmperorBidFeeForNests);

        //transfer iPEFI to the previous emperor
        safeIPEFITransfer(currentEmperor, lastEmperorBidMinusFees);
        jackpot = jackpot.add(lastEmperorBidFeeForJackpot);

        timesCrownStolen = timesCrownStolen.add(1);
    }

    //update currentEmperor, bid amount, and last crowning time
    currentEmperor = msg.sender;
    currentEmperorBid = _amount;
    playerDB[msg.sender].lastCrowningBlockTimestamp = block.timestamp;
    emit CrownStolen(msg.sender);
}

function _updateTopEmperors(address lastEmperor) internal {
    uint256 newReign = playerDB[lastEmperor].timeAsEmperor;

    //check if emperor already in list -- fetch index if they are
    uint256 i = 0;
    bool alreadyInList;
    for(i; i < 5; i++) {
        if(topEmperors[i] == lastEmperor) {
            alreadyInList = true;
            break;
        }
    }

    //get the index of the new element
    uint256 j = 0;
    for(j; j < 5; j++) {
        if(longestReigns[j] < newReign) {
            break;
        }
    }

    if (!alreadyInList) {
        //shift the array down by one position, as necessary
        for(uint256 k = 4; k > j; k--) {
            longestReigns[k] = longestReigns[k - 1];
            topEmperors[k] = topEmperors[k - 1];
        //add in the new element, but only if it belongs in the array
        } if(j < 4) {
            longestReigns[j] =  newReign;
            topEmperors[j] =  lastEmperor;
        //update last array item in edge case where new newReign is only larger than the smallest stored value
        } else if (longestReigns[4] < newReign) {
            longestReigns[j] =  newReign;
            topEmperors[j] =  lastEmperor;
        }

    //case handling for when emperor already holds a spot
    //check i>=j for the edge case of updates to tied positions
    } else if (i >= j) {
        //shift the array by one position, until the emperor's previous spot is overwritten
        for(uint256 m = i; m > j; m--) {
            longestReigns[m] = longestReigns[m - 1];
            topEmperors[m] = topEmperors[m - 1];
        }
        //add emperor back into array, in appropriate position
        longestReigns[j] =  newReign;
        topEmperors[j] =  lastEmperor;

    //handle tie edge cases
    } else {
        //just need to update emperor's reign in this case
        longestReigns[i] = newReign;
    }
}

function _sendToNest(uint256 amountIPEFI) internal {
    PenguinNests(nest).leave(amountIPEFI);
    uint256 pefiToSend = IERC20(pefi).balanceOf(address(this));
    IERC20(pefi).transfer(nest, pefiToSend);
    totalNestDistribution = totalNestDistribution.add(pefiToSend);
    emit PefiDistributed(pefiToSend);
}

function changeFinalDate(uint256 _newFinalDateInSeconds) public {
  require(admin == msg.sender, "You are not authorized to do this.");
  finalDate = _newFinalDateInSeconds;
}

function changeStartDate(uint256 _newStartDateInSeconds) public {
  require(admin == msg.sender, "You are not authorized to do this.");
  startDate = _newStartDateInSeconds;
}

function modifyPoisonParameter(uint256 _newPoisonFee, uint256 _newPoisonDuration, uint256 _newPoisonCooldown) public {
  require(admin == msg.sender, "You are not authorized to do this.");
  poisonFee = _newPoisonFee;
  poisonDuration = _newPoisonDuration;
  poisonCooldown = _newPoisonCooldown;

}

function modifyBidParameters(uint256 _newOpeningBid, uint256 _newMinBidIncrease, uint256 _newMaxBidIncrease) public {
  require(admin == msg.sender, "You are not authorized to do this.");
  openingBid = _newOpeningBid;
  minBidIncrease = _newMinBidIncrease;
  maxBidIncrease = _newMaxBidIncrease;

}

function changeStartDate( uint256[5] memory _newJackpotSplit) public {
  require(admin == msg.sender, "You are not authorized to do this.");
  jackpotSplit = _newJackpotSplit;
}



function getCurrentEmperorNickname() view public returns (string memory) {
  return PenguinDatabase(penguinDatabase).nickname(currentEmperor);
}

function stuckIPEFIretrieval (uint256 _amount) public {
  require(admin == msg.sender, "You are not authorized to do this.");
  require(block.timestamp > finalDate, "The competiton must be over.");
  safeIPEFITransfer(msg.sender, _amount);
}

function poisonCost() public view returns(uint256) {
    //return currentEmperorBid.mul(10).div(100).add(poisonFee);
    return poisonFee;
}

function canBePoisoned(address penguinAddress) public view returns(bool) {
    if (block.timestamp >= (lastTimePoisoned[penguinAddress].add(poisonCooldown)) ){
        return true;
    } else {
        return false;
    }
}

function timeLeftForPoison(address penguinAddress) view public returns(uint256) {
  if (block.timestamp >= lastTimePoisoned[penguinAddress].add(poisonCooldown)){
    return 0;
  } else {
    return lastTimePoisoned[penguinAddress].add(poisonCooldown).sub(block.timestamp);
  }
}

function timePoisonedRemaining(address penguinAddress) view public returns(uint256) {
  if (block.timestamp >= lastTimePoisoned[penguinAddress].add(poisonDuration)){
    return 0;
  } else {
    return lastTimePoisoned[penguinAddress].add(poisonDuration).sub(block.timestamp);
  }
}

}
