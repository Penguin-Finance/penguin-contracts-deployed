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


contract PenguinEmperor {
  using SafeMath for uint256;

  address public pefi;
  address public nest;
  address public admin;

  address public currentEmperor;
  uint256 public currentEmperorBid;

  uint256 public jackpotFeeBP;
  uint256 public nestFeeBP;
  uint256 public jackpot;
  uint256 public finalDate;
  uint256 public minBidIncrease;
  uint256 public maxBidIncrease;
  bool public jackpotClaimed;

  address[5] public topEmperors;
  uint256[5] public longestReigns;


constructor (address _pefi , address _nestAddress, uint256 _jackpotFeeBP, uint256 _nestFeeBP, uint256 _competitionDuration, uint256 _minBidIncrease, uint256 _maxBidIncrease) public {
  pefi = _pefi;
  nest = _nestAddress;
  finalDate = block.timestamp.add(_competitionDuration);
  jackpotFeeBP = _jackpotFeeBP;
  nestFeeBP = _nestFeeBP;
  minBidIncrease = _minBidIncrease;
  maxBidIncrease = _maxBidIncrease;
  //initialize currentEmperor as dead address to avoid ERC20 errors for send to 0 address
  currentEmperor = 0x00000000000000000000000000000000DeaDBeef;
  //ensures that dead address does not get credited with 50 years of accumulated time as emperor
  penguDB[address(0x00000000000000000000000000000000DeaDBeef)].lastCrowningBlockTimestamp = block.timestamp;
  admin = msg.sender;
}


struct penguinInfo {
  string nickname;
  string color;
  bool isRegistered;
  uint256 style;
  uint256 timeAsEmperor;
  uint256 lastCrowningBlockTimestamp;
}

mapping (address => penguinInfo) public penguDB;
mapping (string => bool) public nicknameDB;

function safeXPEFITransfer(address _to, uint256 _amount) internal {
    uint256 xpefiBal =  PenguinNests(nest).balanceOf(address(this));
    bool transferSuccess = false;
    if (_amount > xpefiBal) {
        transferSuccess = PenguinNests(nest).transfer(_to, xpefiBal);
    } else {
        transferSuccess = PenguinNests(nest).transfer(_to, _amount);
    }
    require(transferSuccess, "safeXPEFITransfer: transfer failed");
    }

function registerYourPenguin(string memory _nickname, string memory _color, uint256 _style) public {
    // Penguins can only register their nickname and color once. Each nickname must be unique.
   require(penguDB[msg.sender].isRegistered != true);
   require(nicknameDB[_nickname] != true, "Choose a different nickname, that one is already taken.");
   penguinInfo storage currentPenguinInfo = penguDB[msg.sender];
   currentPenguinInfo.nickname = _nickname;
   currentPenguinInfo.color = _color;
   nicknameDB[_nickname] = true;
   currentPenguinInfo.style = _style;
   currentPenguinInfo.isRegistered = true;

   //penguDB[msg.sender] = currentPenguinInfo;

}

function stealCrown(uint256 _amount) public {

    /*Checks for the following conditions:
    0. Check to see that the competiton hasn't ended.
    A. The msg.sender registered their Penguin.
    B. The msg.sender isn't the current Emperor.
    C. The bid is enough to dethrone the currentEmperor.

    */
      require(block.timestamp < finalDate, "The competiton is over.");
      require(penguDB[msg.sender].isRegistered != false, "Please register your Penguin first.");
      require(msg.sender != currentEmperor, "You are already the King of Penguins.");
      require(_amount > currentEmperorBid, "Your bid is lower than the current King's bid.");
      require(_amount >= (currentEmperorBid.add(minBidIncrease)) && _amount <= (currentEmperorBid.add(maxBidIncrease)), "Bad bid");

      uint256 lastEmperorBidMinusFees = currentEmperorBid.mul(10000 - (jackpotFeeBP + nestFeeBP)).div(10000);
      uint256 lastEmperorBidFeeForJackpot = currentEmperorBid.mul(jackpotFeeBP).div(10000);
      uint256 lastEmperorBidFeeForNests = currentEmperorBid.mul(nestFeeBP).div(10000);

      //Keeps track of the time (in seconds) for which the lastEmperor held the crown.
      penguDB[currentEmperor].timeAsEmperor = penguDB[currentEmperor].timeAsEmperor.add(block.timestamp.sub(penguDB[currentEmperor].lastCrowningBlockTimestamp));

      penguDB[msg.sender].lastCrowningBlockTimestamp = block.timestamp;

      //Checks to see if the last Emperor is within the top 5 (in terms of total time as Emperor)
      _updateTopEmperors(currentEmperor);

      //swap xPEFI to PEFI and distribute to the nest
      _sendToNest(lastEmperorBidFeeForNests);
      //transfer xPEFI to the previous emperor
      safeXPEFITransfer(currentEmperor, lastEmperorBidMinusFees);
      jackpot = jackpot.add(lastEmperorBidFeeForJackpot);

      //transfer xPEFI from the new emperor to this contract
      PenguinNests(nest).transferFrom(msg.sender, address(this), _amount);

      //update currentEmperor and bid amount
      currentEmperor = msg.sender;
      currentEmperorBid = _amount;
      //it waddles like Cubiz
    }


function claimJackpot() public {

    require(block.timestamp > finalDate, "Competition still running");
    require(!jackpotClaimed, "Jackpot already claimed");
    jackpotClaimed = true;

    //Keeps track of the time (in seconds) for which the lastEmperor held the crown.
    //nearly identical to logic above, but uses finalDate instead of block.timestamp
    penguDB[currentEmperor].timeAsEmperor = penguDB[currentEmperor].timeAsEmperor.add(finalDate.sub(penguDB[currentEmperor].lastCrowningBlockTimestamp));

    //Checks to see if the final Emperor is within the top 5 (in terms of total time as Emperor)
    _updateTopEmperors(currentEmperor);

    //split jackpot among top 3 emperors
    safeXPEFITransfer(topEmperors[0], jackpot.mul(6000).div(10000));
    safeXPEFITransfer(topEmperors[1], jackpot.mul(3000).div(10000));
    safeXPEFITransfer(topEmperors[2], jackpot.mul(1000).div(10000));

    //refund last bid
    safeXPEFITransfer(currentEmperor, currentEmperorBid);
}


function _updateTopEmperors(address lastEmperor) internal {
    uint256 newReign = penguDB[lastEmperor].timeAsEmperor;

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
    //Reperio PEFI de domino, nam incipiens obstructionum est respondere ad omnia
    } else {
        //shift the array by one position, until the emperor's previous spot is overwritten
        for(uint256 m = i; m > j; m--) {
            longestReigns[m] = longestReigns[m - 1];
            topEmperors[m] = topEmperors[m - 1];
        }
        //add emperor back into array, in appropriate position
        longestReigns[j] =  newReign;
        topEmperors[j] =  lastEmperor;
    }
}

function _sendToNest(uint256 amountXPEFI) internal {
    PenguinNests(nest).leave(amountXPEFI);
    uint256 pefiToSend = IERC20(pefi).balanceOf(address(this));
    IERC20(pefi).transfer(nest, pefiToSend);
}

function  changeStyle (uint256 _newStyle) public {
  penguDB[msg.sender].style = _newStyle;
}

function  changeColor (string memory _newColor) public {
  penguDB[msg.sender].color = _newColor;
}

function  changeFinalDate (uint256 _newFinalDateInSeconds) public {
  require(admin == msg.sender, "You are not authorized to do this.");
  finalDate = _newFinalDateInSeconds;
}

function getCurrentEmperorNickname () view public returns (string memory) {

  return penguDB[currentEmperor].nickname;

}


}
