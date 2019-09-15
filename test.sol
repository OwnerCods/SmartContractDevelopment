pragma solidity >=0.4.19 <0.6.0;

contract Sahson {
 
 mapping(bytes32 => uint) public MCItemPrices;
 mapping(bytes32 => uint) public SC1ItemPrices;
 mapping(bytes32 => uint) public SC2ItemPrices;
 bytes32[] public items;
 bytes32[] public itemsPaid;
 bool public requestRaised = false;
 string public disapproveReason;
 
 
 function Sahson() public {
    disapproveReason = "";

	addItems("Beam-0-1", 980, 550, 0);
	addItems("Beam-0-2", 1150, 700, 0);
	addItems("Beam-0-3", 1320, 850, 0);
	addItems("Beam-0-4", 1490, 1000, 0);
	addItems("Beam-0-5", 1660, 1150, 0);
	addItems("Beam-0-6", 1830, 1300, 0);
	addItems("Beam-0-7", 2000, 1450, 0);
	addItems("Beam-0-8", 2170, 1600, 0);
	addItems("Beam-0-9", 2340, 1750, 0);
	addItems("Beam-0-10", 2510, 1900, 0);
	addItems("Beam-0-11", 2680, 2050, 0);
	addItems("Beam-0-12", 2850, 2200, 0);
	addItems("Beam-0-13", 3020, 2350, 0);
	addItems("Beam-0-14", 3190, 2500, 0);
	addItems("Beam-0-15", 3360, 2650, 0);
	addItems("Beam-0-16", 3530, 2800, 0);
	addItems("Beam-0-17", 3700, 2950, 0);
	addItems("Beam-0-18", 3870, 3100, 0);
	addItems("Beam-0-19", 4040, 3250, 0);
	addItems("Beam-1-1", 4210, 3400, 0);
	addItems("Beam-1-2", 4380, 3550, 0);
	addItems("Beam-1-3", 4550, 3700, 0); 
	addItems("Beam-1-4", 4720, 3850, 0);
	addItems("Beam-1-5", 4890, 4000, 0);
	addItems("Beam-1-6", 5060, 4150, 0);
	addItems("Beam-1-7", 5230, 4300, 0);
	addItems("Beam-1-8", 5400, 4450, 0);
	addItems("Beam-1-9", 5570, 4600, 0);
	addItems("Beam-1-10", 5740, 4750, 0);
	addItems("Beam-1-11", 5910, 4900, 0);
	addItems("Beam-1-12", 6080, 5050, 0);
	addItems("Beam-1-13", 6250, 5200, 0);
	addItems("Beam-1-14", 6420, 5350, 0);
	addItems("Beam-1-15", 6590, 5500, 0);
	addItems("Beam-1-16", 6760, 5650, 0);
	addItems("Beam-1-17", 6930, 5800, 0);
	addItems("Beam-1-18", 7100, 5950, 0);
	addItems("Beam-1-19", 7270, 6100, 0);
	addItems("Beam-2-1", 7440, 6250, 0);
	addItems("Beam-2-2", 7610, 6400, 0);
	addItems("Beam-2-3", 7780, 6550, 0);
	addItems("Beam-2-4", 7950, 6700, 0);
	addItems("Beam-2-5", 8120, 6850, 0);
	addItems("Beam-2-6", 8290, 7000, 0);
	addItems("Beam-2-7", 8460, 7150, 0);
	addItems("Beam-2-8", 8630, 7300, 0);
	addItems("Beam-2-9", 8800, 7450, 0);
	addItems("Beam-2-10", 8970, 7600, 0);
	addItems("Beam-2-11", 9140, 7750, 0);
	addItems("Beam-2-12", 9310, 7900, 0);
	addItems("Beam-2-13", 9480, 8050, 0);
	addItems("Beam-2-14", 9650, 8200, 0);
	addItems("Beam-2-15", 9820, 8350, 0);
	addItems("Beam-2-16", 9990, 8500, 0);
	addItems("Beam-2-17", 10160, 8650, 0);
	addItems("Beam-2-18", 10330, 8800, 0);
	addItems("Beam-2-19", 10500, 8950, 0);
	addItems("Beam-3-1", 10670, 9100, 0);
	addItems("Beam-3-2", 10840, 9250, 0);
	addItems("Beam-3-3", 11010, 9400, 0);
	addItems("Beam-3-4", 11180, 9550, 0);
	addItems("Beam-3-5", 11350, 9700, 0);
	addItems("Beam-3-6", 11520, 9850, 0);
	addItems("Beam-3-7", 11690, 10000, 0);
	addItems("Beam-3-8", 11860, 10150, 0);
	addItems("Beam-3-9", 12030, 10300, 0);
	addItems("Beam-3-10", 12200, 10450, 0);
	addItems("Beam-3-11", 12370, 10600, 0);
	addItems("Beam-3-12", 12540, 10750, 0);
	addItems("Beam-3-13", 12710, 10900, 0);
	addItems("Beam-3-14", 12880, 11050, 0);
	addItems("Beam-3-15", 13050, 11200, 0);
	addItems("Beam-3-16", 13220, 11350, 0);
	addItems("Beam-3-17", 13390, 11500, 0);
	addItems("Beam-3-18", 13560, 11650, 0);
	addItems("Beam-3-19", 13730, 11800, 0);
	addItems("Beam-3-20", 13900, 11950, 0);

	addItems("Window-0-1", 0, 0, 1000);
	addItems("Window-0-2", 0, 0, 1150);
	addItems("Window-0-3", 0, 0, 1300);
	addItems("Window-0-4", 0, 0, 1450);
	addItems("Window-0-5", 0, 0, 1600);
	addItems("Window-0-6", 0, 0, 1750);
	addItems("Window-0-7", 0, 0, 1000);
	addItems("Window-0-8", 0, 0, 1150);
	addItems("Window-0-9", 0, 0, 1300);
	addItems("Window-0-10", 0, 0, 1450);
	addItems("Window-0-11", 0, 0, 1600);
	addItems("Window-0-12", 0, 0, 1750);
	addItems("Window-0-13", 0, 0, 1900);
	addItems("Window-1-1", 0, 0, 2050);
	addItems("Window-1-2", 0, 0, 2200);
	addItems("Window-1-3", 0, 0, 1300);
	addItems("Window-1-4", 0, 0, 1450);
	addItems("Window-1-5", 0, 0, 1600);
	addItems("Window-1-6", 0, 0, 1750);
	addItems("Window-1-7", 0, 0, 1900);
	addItems("Window-1-8", 0, 0, 2050);
	addItems("Window-1-9", 0, 0, 2200);
	addItems("Window-1-10", 0, 0, 2350);
	addItems("Window-1-11", 0, 0, 2500);
	addItems("Window-1-12", 0, 0, 2650);
	addItems("Window-1-13", 0, 0, 2800);
	addItems("Window-1-14", 0, 0, 2950);
	addItems("Window-1-15", 0, 0, 3100);
	addItems("Window-1-16", 0, 0, 3250);
	addItems("Window-1-17", 0, 0, 3400);
	addItems("Window-1-18", 0, 0, 3550);
	addItems("Window-2-1", 0, 0, 3700);
	addItems("Window-2-2", 0, 0, 3850);
	addItems("Window-2-3", 0, 0, 4000);
	addItems("Window-2-4", 0, 0, 4150);
	addItems("Window-2-5", 0, 0, 4300);
	addItems("Window-2-6", 0, 0, 4450);
	addItems("Window-2-7", 0, 0, 4600);
	addItems("Window-2-8", 0, 0, 4750);
	addItems("Window-2-9", 0, 0, 4900);
	addItems("Window-2-10", 0, 0, 5050);
	addItems("Window-2-11", 0, 0, 5200);
	addItems("Window-2-12", 0, 0, 5350);
	addItems("Window-2-13", 0, 0, 5500);
	addItems("Window-3-1", 0, 0, 5650);
	addItems("Window-3-2", 0, 0, 5800);
	addItems("Window-3-3", 0, 0, 5950);
	addItems("Window-3-4", 0, 0, 6100);
	addItems("Window-3-5", 0, 0, 6250);
	addItems("Window-3-6", 0, 0, 6400);
	addItems("Window-3-7", 0, 0, 6550);
	addItems("Window-3-8", 0, 0, 6700);
	addItems("Window-3-9", 0, 0, 6850);
	addItems("Window-3-10", 0, 0, 7000);
	addItems("Window-3-11", 0, 0, 7150);
	addItems("Window-3-12", 0, 0, 7300);
	addItems("Window-3-13", 0, 0, 7450);

	addItems("Wall-0-1", 980, 550, 0);
	addItems("Wall-0-2", 1150, 700, 0);
	addItems("Wall-0-3", 1320, 850, 0);
	addItems("Wall-0-4", 1490, 1000, 0);
	addItems("Wall-0-5", 1660, 1150, 0);
	addItems("Wall-0-6", 1830, 1300, 0);
	addItems("Wall-0-7", 2000, 1450, 0);
	addItems("Wall-0-8", 2170, 1600, 0);
	addItems("Wall-0-9", 2340, 1750, 0);
	addItems("Wall-0-10", 2510, 1900, 0);
	addItems("Wall-0-11", 2680, 2050, 0);
	addItems("Wall-0-12", 2850, 2200, 0);
	addItems("Wall-0-13", 3020, 2350, 0);
	addItems("Wall-0-14", 3190, 2500, 0);
	addItems("Wall-0-15", 3360, 2650, 0);
	addItems("Wall-0-16", 3530, 2800, 0);
	addItems("Wall-0-17", 3700, 2950, 0);
	addItems("Wall-0-18", 3870, 3100, 0);
	addItems("Wall-0-19", 4040, 3250, 0);
	addItems("Wall-1-1", 4210, 3400, 0);
	addItems("Wall-1-2", 4380, 3550, 0);
	addItems("Wall-1-3", 4550, 3700, 0);
	addItems("Wall-1-4", 4720, 3850, 0);
	addItems("Wall-1-5", 4890, 4000, 0);
	addItems("Wall-1-6", 5060, 4150, 0);
	addItems("Wall-1-7", 5230, 4300, 0);
	addItems("Wall-1-8", 5400, 4450, 0);
	addItems("Wall-1-9", 5570, 4600, 0);
	addItems("Wall-1-10", 5740, 4750, 0);
	addItems("Wall-1-11", 5910, 4900, 0);
	addItems("Wall-1-12", 6080, 5050, 0);
	addItems("Wall-1-13", 6250, 5200, 0);
	addItems("Wall-1-14", 6420, 5350, 0);
	addItems("Wall-1-15", 6590, 5500, 0);
	addItems("Wall-1-16", 6760, 5650, 0);
	addItems("Wall-1-17", 6930, 5800, 0);
	addItems("Wall-1-18", 7100, 5950, 0);
	addItems("Wall-1-19", 7270, 6100, 0);
	addItems("Wall-1-20", 7440, 6250, 0);
	addItems("Wall-1-21", 7610, 6400, 0);
	addItems("Wall-2-1", 7780, 6550, 0);
	addItems("Wall-2-2", 7950, 6700, 0);
	addItems("Wall-2-3", 8120, 6850, 0);
	addItems("Wall-2-4", 8290, 7000, 0);
	addItems("Wall-2-5", 8460, 7150, 0);
	addItems("Wall-2-6", 8630, 7300, 0);
	addItems("Wall-2-7", 8800, 7450, 0);
	addItems("Wall-2-8", 8970, 7600, 0);
	addItems("Wall-2-9", 9140, 7750, 0);
	addItems("Wall-2-10", 9310, 7900, 0);
	addItems("Wall-2-11", 9480, 8050, 0);
	addItems("Wall-2-12", 9650, 8200, 0);
	addItems("Wall-2-13", 9820, 8350, 0);
	addItems("Wall-2-14", 9990, 8500, 0);
	addItems("Wall-2-15", 10160, 8650, 0);
	addItems("Wall-2-18", 10330, 8800, 0);
	addItems("Wall-2-19", 10500, 8950, 0);
	addItems("Wall-2-20", 10670, 9100, 0);
	addItems("Wall-3-1", 7780, 6550, 0);
	addItems("Wall-3-2", 7950, 6700, 0);
	addItems("Wall-3-3", 8120, 6850, 0);
	addItems("Wall-3-4", 8290, 7000, 0);
	addItems("Wall-3-5", 8460, 7150, 0);
	addItems("Wall-3-6", 8630, 7300, 0);
	addItems("Wall-3-7", 8800, 7450, 0);
	addItems("Wall-3-8", 8970, 7600, 0);
	addItems("Wall-3-9", 9140, 7750, 0);
	addItems("Wall-3-10", 9310, 7900, 0);
	addItems("Wall-3-11", 9480, 8050, 0);
	addItems("Wall-3-12", 9650, 8200, 0);
	addItems("Wall-3-13", 9820, 8350, 0);
	addItems("Wall-3-14", 9990, 8500, 0);
	addItems("Wall-3-15", 10160, 8650, 0);
	addItems("Wall-3-18", 10330, 8800, 0);
	addItems("Wall-3-19", 10500, 8950, 0);
	addItems("Wall-3-20", 10670, 9100, 0);

	addItems("Door-0-1", 0, 0, 750);
	addItems("Door-0-2", 0, 0, 870);
	addItems("Door-1-1", 0, 0, 580);
	addItems("Door-1-2", 0, 0, 900);
	addItems("Door-1-3", 0, 0, 815);
	addItems("Door-1-4", 0, 0, 831);
	addItems("Door-1-5", 0, 0, 847);
	addItems("Door-1-6", 0, 0, 863);
	addItems("Door-1-7", 0, 0, 879);
	addItems("Door-1-8", 0, 0, 895);
	addItems("Door-1-9", 0, 0, 911);
	addItems("Door-1-10", 0, 0, 927);
	addItems("Door-2-1", 0, 0, 943);
	addItems("Door-2-2", 0, 0, 959);
	addItems("Door-2-3", 0, 0, 975);
	addItems("Door-2-4", 0, 0, 991);
	addItems("Door-2-5", 0, 0, 1007);
	addItems("Door-2-6", 0, 0, 1023);
	addItems("Door-2-7", 0, 0, 1039);
	addItems("Door-2-8", 0, 0, 1055);
	addItems("Door-2-9", 0, 0, 1071);
	addItems("Door-2-10", 0, 0, 1087);

	addItems("Foundation", 1200, 500, 0);
	addItems("Floor-0", 1150, 600, 0);
	addItems("Floor-1", 950, 650, 0);
	addItems("Floor-1-1", 1000, 740, 0);
	addItems("Floor-1-2", 880, 0, 0);
	addItems("Floor-2", 850, 0, 0);
	addItems("Floor-2-1", 700, 0, 0);
	addItems("Floor-3", 900, 0, 0);
	addItems("BalconyF-2-1", 590, 600, 0);
	addItems("BalconyF-2-2", 800, 650, 0);
	addItems("BalconyF-2-3", 1000, 740, 0);
	addItems("BalconyF-2-4", 1100, 830, 0);
	addItems("BalconyF-2-5", 950, 920, 0);
	addItems("BalconyF-2-6", 850, 1010, 0);
	addItems("BalconyF-2-7", 860, 600, 0);
	addItems("BalconyF-3-1", 670, 650, 0);
	addItems("BalconyF-3-2", 890, 740, 0);
	addItems("BalconyF-3-3", 500, 800, 0);
	addItems("BalconyF-3-4", 900, 580, 0);
	addItems("Roof", 2000, 600, 0);


	addItems("Column-0-1", 1200, 0, 0);
	addItems("Column-0-2", 1150, 0, 0);
	addItems("Column-0-3", 950, 0, 0);
	addItems("Column-0-4", 1000, 0, 0);
	addItems("Column-0-5", 880, 0, 0);
	addItems("Column-0-6", 850, 0, 0);
	addItems("Column-0-7", 700, 0, 0);
	addItems("Column-0-8", 900, 0, 0);
	addItems("Column-0-9", 590, 0, 0);
	addItems("Column-0-10", 800, 0, 0);
	addItems("Column-0-11", 1000, 0, 0);
	addItems("Column-0-12", 1100, 0, 0);
	addItems("Column-0-13", 950, 0, 0);
	addItems("Column-0-14", 850, 0, 0);
	addItems("Column-0-15", 860, 0, 0);
	addItems("Column-0-16", 670, 0, 0);
	addItems("Column-0-17", 890, 0, 0);
	addItems("Column-0-18", 500, 0, 0);
	addItems("Column-0-19", 900, 0, 0);
	addItems("Column-1-1", 800, 0, 0);
	addItems("Column-1-2", 1000, 0, 0);
	addItems("Column-1-3", 1100, 0, 0);
	addItems("Column-1-4", 950, 0, 0);
	addItems("Column-1-5", 850, 0, 0);
	addItems("Column-1-6", 860, 0, 0);
	addItems("Column-1-7", 670, 0, 0);
	addItems("Column-1-8", 890, 0, 0);
	addItems("Column-1-9", 500, 0, 0);
	addItems("Column-1-10", 850, 0, 0);
	addItems("Column-1-11", 860, 0, 0);
	addItems("Column-1-12", 670, 0, 0);
	addItems("Column-1-13", 890, 0, 0);
	addItems("Column-1-14", 500, 0, 0);
	addItems("Column-1-15", 900, 0, 0);
	addItems("Column-1-16", 850, 0, 0);
	addItems("Column-1-17", 860, 0, 0);
	addItems("Column-1-18", 670, 0, 0);
	addItems("Column-1-19", 890, 0, 0);
	addItems("Column-2-1", 800, 0, 0);
	addItems("Column-2-2", 1000, 0, 0);
	addItems("Column-2-3", 1100, 0, 0);
	addItems("Column-2-4", 950, 0, 0);
	addItems("Column-2-5", 850, 0, 0);
	addItems("Column-2-6", 860, 0, 0);
	addItems("Column-2-7", 670, 0, 0);
	addItems("Column-2-8", 890, 0, 0);
	addItems("Column-2-9", 500, 0, 0);
	addItems("Column-2-10", 850, 0, 0);
	addItems("Column-2-11", 860, 0, 0);
	addItems("Column-2-12", 670, 0, 0);
	addItems("Column-2-13", 890, 0, 0);
	addItems("Column-2-14", 500, 0, 0);
	addItems("Column-2-15", 900, 0, 0);
	addItems("Column-2-16", 850, 0, 0);
	addItems("Column-3-1", 800, 0, 0);
	addItems("Column-3-2", 1000, 0, 0);
	addItems("Column-3-3", 1100, 0, 0);
	addItems("Column-3-4", 950, 0, 0);
	addItems("Column-3-5", 850, 0, 0);
	addItems("Column-3-6", 860, 0, 0);
	addItems("Column-3-7", 670, 0, 0);
	addItems("Column-3-8", 890, 0, 0);
	addItems("Column-3-9", 500, 0, 0);
	addItems("Column-3-10", 850, 0, 0);
	addItems("Column-3-11", 860, 0, 0);
	addItems("Column-3-12", 670, 0, 0);

	addItems("Railing-1-1", 0, 0, 250);
	addItems("Railing-1-2", 0, 0, 300);
	addItems("Railing-1-3", 0, 0, 650);
	addItems("Railing-1-4", 0, 0, 560);
	addItems("Railing-1-5", 0, 0, 400);
	addItems("Railing-1-6", 0, 0, 720);
	addItems("Railing-2-1", 0, 0, 800);
	addItems("Railing-2-2", 0, 0, 390);
	addItems("Railing-2-3", 0, 0, 750);
	addItems("Railing-2-4", 0, 0, 850);
	addItems("Railing-2-5", 0, 0, 560);
	addItems("Railing-2-6", 0, 0, 360);
 }
 
 
 function addItems(bytes memory p_item, uint p_priceMC, uint p_priceSC1, uint p_priceSC2) public {
  items.push(keccak256(p_item));
  MCItemPrices[keccak256(p_item)] = p_priceMC;
  SC1ItemPrices[keccak256(p_item)] = p_priceSC1;
  SC2ItemPrices[keccak256(p_item)] = p_priceSC2;
 }
 
 
 function getItems() public view returns (bytes32[] memory) {
  return (items);
 }
 
 
 function getItemPrice(bytes32 _item) public view returns (uint, uint, uint) {
  for(uint j = 0; j < itemsPaid.length; j++){
    if(itemsPaid[j] == _item){
      return (0, 0, 0);
    }
  }
  
  return (MCItemPrices[_item], SC1ItemPrices[_item], SC2ItemPrices[_item]);
 }
 
 
 function raiseRequest() public returns (bool){
  requestRaised = true;
  disapproveReason = "";
  return true;
 }
 
 
 function getRequestRaised() public view returns (bool) {
  return (requestRaised);
 }
 
 
 function approveRequest(
     uint256 p_amountMC, 
     uint256 p_amountSC1, 
     uint256 p_amountSC2, 
     address  p_AddressMC, 
     address  p_AddressSC1, 
     address  p_AddressSC2,
     bytes32[] memory p_itemsToApprove
 )
 public payable
 returns (bool)
 {
  p_AddressMC.transfer(p_amountMC);
  p_AddressSC1.transfer(p_amountSC1);
  p_AddressSC2.transfer(p_amountSC2);
  
  for(uint j = 0; j < p_itemsToApprove.length; j++){
    itemsPaid.push(p_itemsToApprove[j]);
  }
  
  requestRaised = false;
  return (true);
 }
 
 
 function disapproveRequest(string memory p_disapproveReason) public returns (bool){
  requestRaised = false;
  disapproveReason = p_disapproveReason;
  return true;
 }
 
 
 function getDisapproveReason() public view returns (string memory) {
  return (disapproveReason);
 }
 
 
}
