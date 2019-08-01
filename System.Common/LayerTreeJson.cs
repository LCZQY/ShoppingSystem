using System.Collections.Generic;

namespace System.Common
{/// <summary>
 /// layer 树形数据绑定指定返回体
 /// </summary>
    public class LayerTreeJson
    {

        /// <summary>
        /// 文本
        /// </summary>
        public string title { get; set; }

        /// <summary>
        /// key
        /// </summary>
        public string id { get; set; }

        /// <summary>
        /// 数据
        /// </summary>
        public List<LayerTreeJson> children { get; set; }

    }
}
