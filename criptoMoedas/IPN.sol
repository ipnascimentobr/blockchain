pragma solidity ^0.8.0;

interface IERC20 {
    //getters
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);

    //functions metódos
    function transfer(address recipient, uint256 amount) external returns (bool);    
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    
    //eventos
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract MyCripto is IERC20 {
    // Implement the functions from the interface here
    string private _name = "Name_cripto";
    string private _symbol =  "Symbol_cripto";
    uint8 private _decimals = 18;

    
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;
    uint256 private _totalSupply = 10 ether;

    constructor() {
        _balances[msg.sender] = _totalSupply;
    }

    function name() external view returns (string memory) {
        return _name;
    }

    function symbol() external view returns (string memory) {
        return _symbol;
    }

    function decimals() external view returns (uint8) {
        return _decimals;
    }

    function totalSupply() external view override returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) external view override returns (uint256) {
        return _balances[account];
    }

    function allowance(address owner, address spender) external view override returns (uint256) {
        return _allowances[owner][spender];
    }

    function transfer(address recipient, uint256 amount) external override returns (bool) {
        address sender = msg.sender;
        require(sender != address(0), "IPNcoin: transfer from the zero address");
        require(recipient != address(0), "IPNcoin: transfer to the zero address");
        require(_balances[sender] >= amount, "IPNcoin: transfer amount exceeds balance");

        _balances[sender] -= amount;
        _balances[recipient] += amount;
        emit Transfer(sender, recipient, amount);
        return true;
    }

    function approve(address spender, uint256 amount) external override returns (bool) {
        address owner = msg.sender;
        require(owner != address(0), "IPNcoin: approve from the zero address");
        require(spender != address(0), "IPNcoin: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
        return true;
    }

    function transferFrom(address sender, address recipient, uint256 amount) external override returns (bool) {
        address spender = msg.sender;
        require(sender != address(0), "IPNcoin: transfer from the zero address");
        require(recipient != address(0), "IPNcoin: transfer to the zero address");
        require(_balances[sender] >= amount, "IPNcoin: transfer amount exceeds balance");
        require(_allowances[sender][spender] >= amount, "IPNcoin: transfer amount exceeds allowance");

        _balances[sender] -= amount;
        _balances[recipient] += amount;
        _allowances[sender][spender] -= amount;
        emit Transfer(sender, recipient, amount);
        return true;
    }
}