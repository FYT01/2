.class Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;
.super Ljava/lang/Object;
.source "BluetoothMapSettingsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

.field final synthetic val$groupItem:Lcom/android/bluetooth/map/BluetoothMapAccountItem;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;
    .param p2, "val$groupItem"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->val$groupItem:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 258
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-get0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->val$groupItem:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-wrap0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    .local v0, "childItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p2    # "isChecked":Z
    .local v2, "children$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 262
    .local v1, "children":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-boolean v3, v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 263
    .local v3, "oldIsChecked":Z
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-get4(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)I

    move-result v4

    if-lez v4, :cond_1

    .line 264
    iput-boolean p2, v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 265
    iget-boolean v4, v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eq v3, v4, :cond_0

    .line 266
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->updateAccount(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    .line 270
    const v6, 0x7f06006c

    .line 269
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-wrap1(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Ljava/lang/String;)V

    .line 271
    const/4 p2, 0x0

    .local p2, "isChecked":Z
    goto :goto_0

    .line 275
    .end local v0    # "childItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .end local v1    # "children":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v2    # "children$iterator":Ljava/util/Iterator;
    .end local v3    # "oldIsChecked":Z
    .end local p2    # "isChecked":Z
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->val$groupItem:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-boolean p2, v4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 276
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->notifyDataSetChanged()V

    .line 277
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3$1;

    invoke-direct {v5, p0}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;)V

    .line 283
    const-wide/16 v6, 0x32

    .line 277
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    return-void
.end method
