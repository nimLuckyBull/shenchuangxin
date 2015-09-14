type
      gEndianness* = enum 
          大端处理器,大端
const gcpuEndian* {.magic: "CpuEndian"}: gEndianness = 大端
echo gcpuEndian
