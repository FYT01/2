.class Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;
.super Ljava/lang/Object;
.source "BluetoothMapSettingsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

.field final synthetic val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;ILcom/android/bluetooth/map/BluetoothMapAccountItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;
    .param p2, "val$groupPosition"    # I
    .param p3, "val$child"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$groupPosition:I

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 130
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$groupPosition:I

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getGroup(I)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v5

    .line 131
    .local v5, "parentGroup":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-boolean v4, v7, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 132
    .local v4, "oldIsChecked":Z
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-boolean p2, v7, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 133
    if-eqz p2, :cond_6

    .line 134
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v7, v5}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-wrap0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v1

    .line 135
    .local v1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 136
    .local v0, "childIndex":I
    const/4 v3, 0x1

    .line 137
    .local v3, "isAllChildClicked":Z
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-get4(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)I

    move-result v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v7, v8

    if-ltz v7, :cond_5

    .line 139
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 140
    if-eq v2, v0, :cond_4

    .line 141
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 142
    .local v6, "siblings":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-boolean v7, v6, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-nez v7, :cond_4

    .line 143
    const/4 v3, 0x0

    .line 144
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    .line 145
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v2    # "i":I
    .end local v6    # "siblings":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    .line 158
    iput-boolean v11, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 159
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    .line 160
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v8

    .line 159
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 161
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v9

    .line 161
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v7, v10}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-set0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Z)Z

    .line 179
    .end local v0    # "childIndex":I
    .end local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .end local v3    # "isAllChildClicked":Z
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->notifyDataSetChanged()V

    .line 180
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-boolean v7, v7, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eq v7, v4, :cond_3

    .line 181
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->updateAccount(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    .line 128
    :cond_3
    return-void

    .line 139
    .restart local v0    # "childIndex":I
    .restart local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .restart local v2    # "i":I
    .restart local v3    # "isAllChildClicked":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v2    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v8, v8, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    .line 153
    const v9, 0x7f06006c

    .line 152
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-wrap1(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Ljava/lang/String;)V

    .line 154
    const/4 v3, 0x0

    .line 155
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-boolean v10, v7, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    goto :goto_1

    .line 169
    .end local v0    # "childIndex":I
    .end local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .end local v3    # "isAllChildClicked":Z
    :cond_6
    iget-boolean v7, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v7, :cond_7

    .line 170
    iput-boolean v10, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 171
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v7, v10}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-set0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Z)Z

    .line 172
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 174
    :cond_7
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v7, v11}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-set0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Z)Z

    .line 175
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
