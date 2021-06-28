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


contract PenguinsWithoutBorders {
  using SafeMath for uint256;

  address public pefi;
  address public admin;
  address public penguinDatabase;

  address public latestDonor;
  //address to receive funds
  address payable public fundsReceiver;

  uint256 public totalPefiRaised;
  uint256 public totalAvaxRaised;
  uint256 public finalDate;
  //min donation amounts
  uint256 public minDonationPefi;
  uint256 public minDonationAVAX;
  //tiers for NFTs
  uint256 public avaxTierOne;
  uint256 public avaxTierTwo;
  uint256 public pefiTierOne;
  uint256 public pefiTierTwo;
  //total number of donations
  uint256 public totalNumberOfDonations;
  //latest donation amounts
  uint256[2] public latestDonation;

  mapping(address => playerInfo) public playerDB;
  mapping(address => bool) public unlockedNFT;
  mapping(address => bool) public unlockedFirstNFT;
  mapping(address => bool) public unlockedSecondNFT;

  address[] public hasUnlockedNFT;
  address[] public hasUnlockedFirstNFT;
  address[] public hasUnlockedSecondNFT;


  event PefiDonated(address indexed donor, uint256 amountPEFI);
  event AvaxDonated(address indexed donor, uint256 amountAVAX);

constructor (
    address _pefi, 
    address _penguinDatabase,
    uint256 _eventDuration,
    uint256 _minDonationPefi,
    uint256 _minDonationAVAX,
    address payable _fundsReceiver,
    uint256 _avaxTierOne,
    uint256 _avaxTierTwo,
    uint256 _pefiTierOne,
    uint256 _pefiTierTwo
    ) public {
  pefi = _pefi;
  penguinDatabase = _penguinDatabase;
  finalDate = block.timestamp.add(_eventDuration);
  minDonationPefi = _minDonationPefi;
  minDonationAVAX = _minDonationAVAX;
  fundsReceiver = _fundsReceiver;
  admin = msg.sender;
  avaxTierOne = _avaxTierOne;
  avaxTierTwo = _avaxTierTwo;
  pefiTierOne = _pefiTierOne;
  pefiTierTwo = _pefiTierTwo;
}

struct playerInfo {
    uint256 pefiDonations;
    uint256 avaxDonations;
}

function donatePefi(uint256 _amount) public {
    require(block.timestamp < finalDate, "The event is over.");
    require(PenguinDatabase(penguinDatabase).isRegistered(msg.sender) != false, "Please register your Penguin first.");
    require(_amount >= minDonationPefi, "Under min donation");   
 
    //transfer PEFI from the caller to this contract
    IERC20(pefi).transferFrom(msg.sender, address(this), _amount);

    playerDB[msg.sender].pefiDonations = playerDB[msg.sender].pefiDonations.add(_amount);
    totalPefiRaised = totalPefiRaised.add(_amount);
    emit PefiDonated(msg.sender, _amount);
    
    //update latestDonor
    latestDonor = msg.sender;
    latestDonation = [_amount, 0];
    totalNumberOfDonations = totalNumberOfDonations.add(1);

    //check to unlock any NFTs
    checkUnlockedNFT_Pefi();
}

function donateAvax() public payable {
    require(block.timestamp < finalDate, "The event is over.");
    require(PenguinDatabase(penguinDatabase).isRegistered(msg.sender) != false, "Please register your Penguin first.");
    uint256 avaxAmount = msg.value;
    require(avaxAmount >= minDonationAVAX, "Under min donation");

    playerDB[msg.sender].avaxDonations = playerDB[msg.sender].avaxDonations.add(avaxAmount);
    totalAvaxRaised = totalAvaxRaised.add(avaxAmount);
    emit AvaxDonated(msg.sender, avaxAmount);
    
    //update latestDonor
    latestDonor = msg.sender;
    latestDonation = [0, avaxAmount];
    totalNumberOfDonations = totalNumberOfDonations.add(1);

    //check to unlock any NFTs
    checkUnlockedNFT_Avax();
}

function checkUnlockedNFT_Pefi() internal {
    if (!unlockedSecondNFT[msg.sender]) {
        if(playerDB[msg.sender].pefiDonations >= pefiTierTwo) {
            unlockedSecondNFT[msg.sender] = true;
            hasUnlockedNFT.push(msg.sender);
        }
        if (!unlockedFirstNFT[msg.sender]) {
            if(playerDB[msg.sender].pefiDonations >= pefiTierOne) {
                unlockedFirstNFT[msg.sender] = true;
                hasUnlockedFirstNFT.push(msg.sender);
            }
            if (!unlockedNFT[msg.sender]) {
                unlockedNFT[msg.sender] = true;
                hasUnlockedSecondNFT.push(msg.sender);
            }
        }
    }
}

function checkUnlockedNFT_Avax() internal {
    if (!unlockedSecondNFT[msg.sender]) {
        if(playerDB[msg.sender].avaxDonations >= avaxTierTwo) {
            unlockedSecondNFT[msg.sender] = true;
            hasUnlockedNFT.push(msg.sender);
        }
        if (!unlockedFirstNFT[msg.sender]) {
            if(playerDB[msg.sender].avaxDonations >= avaxTierOne) {
                unlockedFirstNFT[msg.sender] = true;
                hasUnlockedFirstNFT.push(msg.sender);
            }
            if (!unlockedNFT[msg.sender]) {
                unlockedNFT[msg.sender] = true;
                hasUnlockedSecondNFT.push(msg.sender);
            }
        }
    }
}

function forwardFunds() public {
    require(block.timestamp >= finalDate, "The event is still ongoing.");
    uint256 avaxBalance = address(this).balance;
    fundsReceiver.transfer(avaxBalance);
    uint256 pefiBal = IERC20(pefi).balanceOf(address(this));
    IERC20(pefi).transfer(fundsReceiver, pefiBal);
}

function changeFinalDate(uint256 _newFinalDateInSeconds) public {
  require(admin == msg.sender, "You are not authorized to do this.");
  finalDate = _newFinalDateInSeconds;
}

function getCurrentEmperorNickname() view public returns(string memory) {
  return PenguinDatabase(penguinDatabase).nickname(latestDonor);
}

function latestDonationPefi() view public returns(uint256) {
    return latestDonation[0];
}

function latestDonationAvax() view public returns(uint256) {
    return latestDonation[1];
}

}
