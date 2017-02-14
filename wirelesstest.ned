//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package testing;
import inet.common.figures.DelegateSignalConfigurator;
import inet.linklayer.ieee80211.mac.BasicRateSelection;
import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.integrated.IntegratedCanvasVisualizer;


network WirelessA
{
    parameters:
        string hostType = default("WirelessHost");
        string mediumType = default("IdealRadioMedium");
        @display("bgb=650,500;bgg=100,1,grey95");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);      
        

    submodules:
        visualizer: IntegratedCanvasVisualizer {
            @display("p=580,125");
        }
        configurator: IPv4NetworkConfigurator {
            @display("p=580,200");

        }
        radioMedium: <mediumType> like IRadioMedium {
            @display("p=580,275");
        }
        figureHelper: DelegateSignalConfigurator {
            @display("p=580,350");
        }
        hostA: <hostType> like INetworkNode {
            @display("p=149.184,349.776");

        }
        hostB: <hostType> like INetworkNode {
            @display("p=298.368,255.024;b=57.456,57.456,oval,#FF0080");
        }
        hostC: <hostType> like INetworkNode {
            @display("p=414.28802,184.464");
        }
        hostD: <hostType> like INetworkNode {
            @display("p=453.6,290.30402");
        }
        hostE: <hostType> like INetworkNode {
            @display("p=404.208,370.944");
        }
        hostF: <hostType> like INetworkNode {
            @display("p=282.24002,389.088");
        }
        hostG: <hostType> like INetworkNode {
            @display("p=250.992,133.056");
        }
        hostH: <hostType> like INetworkNode {
            @display("p=140.112,223.776");
        }

}
