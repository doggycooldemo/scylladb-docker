--
-- Licensed to the Apache Software Foundation (ASF) under one or more
-- contributor license agreements.  See the NOTICE file distributed with
-- this work for additional information regarding copyright ownership.
-- The ASF licenses this file to You under the Apache License, Version 2.0
-- (the "License"); you may not use this file except in compliance with
-- the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

local log          = require("apisix.core.log")
local local_conf   = require("apisix.core.config_local").local_conf()

local discovery_type = local_conf.apisix and local_conf.apisix.discovery
local discovery

if discovery_type then
    log.info("use discovery: ", discovery_type)
    discovery = require("apisix.discovery." .. discovery_type)
end


return {
    version = 0.1,
    discovery = discovery
}