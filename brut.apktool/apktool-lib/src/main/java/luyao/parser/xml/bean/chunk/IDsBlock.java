package luyao.parser.xml.bean.chunk;

public class IDsBlock {
    private int type;

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getSize() {
        return ids == null ? 0:ids.length;
    }

//    public void setSize(int size) {
//        this.size = size;
//    }

    public int[] getIds() {
        return ids;
    }

    public void setIds(int[] ids) {
        this.ids = ids;
    }

//    private int size;
    private int[] ids;

//    public int getOldLen() {
//        return oldLen;
//    }
//
//    public void setOldLen(int oldLen) {
//        this.oldLen = oldLen;
//    }
//
//    private int oldLen;

    @Override
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        if (ids != null) {
            for (int i = 0; i < ids.length; i++) {
                stringBuilder.append(Integer.toHexString(ids[i]) + "\n");
            }
            return stringBuilder.toString();
        }
        return "";
    }
}
