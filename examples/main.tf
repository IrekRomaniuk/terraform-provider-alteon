terraform {
  required_providers {
    alteon = {
      versions = ["0.1"]
      source = "github.com/irekromaniuk/alteon"
    }
  }
}

provider "alteon" {
}

resource "alteon_real_server" "TestServer" {
  index="TestServer"
  items {
    	ipaddr="1.1.1.2"
      name="description2"
      //weight=1
      //timeout=2
      state=2
    }
}

/*resource "alteon_real_server" "LabServer2" {
  index="LabServer2"
  items {
    	ipaddr="2.2.2.3"
      name="description2"
      state=2
    }
}*/

/*data "alteon_real_server" "TestServer" {
  index="TestServer"
}

output "TestServer" {
  value = data.alteon_real_server.TestServer
}*/

resource "alteon_server_group" "LabServers" {
  index="LabServers"
  items {
    name="Group description2"
    addserver="LabServer10"
    healthcheckurl="tcp-443"
    }
}