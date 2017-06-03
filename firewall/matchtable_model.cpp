#include <iostream>
#include <unordered_map>
#ifdef __cplusplus
extern "C" {
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
typedef uint64_t ModuleFirewallFirewallWithTcpReqT;
typedef uint64_t ModuleFirewallFirewallWithTcpRspT;
std::unordered_map<ModuleFirewallFirewallWithTcpReqT, ModuleFirewallFirewallWithTcpRspT> tbl_module_firewall_firewall_with_tcp;
extern "C" ModuleFirewallFirewallWithTcpReqT matchtable_read_module_firewall_firewall_with_tcp(ModuleFirewallFirewallWithTcpReqT rdata) {
    auto it = tbl_module_firewall_firewall_with_tcp.find(rdata);
    if (it != tbl_module_firewall_firewall_with_tcp.end()) {
        return tbl_module_firewall_firewall_with_tcp[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_firewall_firewall_with_tcp(ModuleFirewallFirewallWithTcpReqT wdata, ModuleFirewallFirewallWithTcpRspT action){
    tbl_module_firewall_firewall_with_tcp[wdata] = action;
}
typedef uint64_t ModuleFirewallFirewallWithUdpReqT;
typedef uint64_t ModuleFirewallFirewallWithUdpRspT;
std::unordered_map<ModuleFirewallFirewallWithUdpReqT, ModuleFirewallFirewallWithUdpRspT> tbl_module_firewall_firewall_with_udp;
extern "C" ModuleFirewallFirewallWithUdpReqT matchtable_read_module_firewall_firewall_with_udp(ModuleFirewallFirewallWithUdpReqT rdata) {
    auto it = tbl_module_firewall_firewall_with_udp.find(rdata);
    if (it != tbl_module_firewall_firewall_with_udp.end()) {
        return tbl_module_firewall_firewall_with_udp[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_firewall_firewall_with_udp(ModuleFirewallFirewallWithUdpReqT wdata, ModuleFirewallFirewallWithUdpRspT action){
    tbl_module_firewall_firewall_with_udp[wdata] = action;
}
#ifdef __cplusplus
}
#endif
#include <iostream>
#include <unordered_map>
#ifdef __cplusplus
extern "C" {
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#ifdef __cplusplus
}
#endif
