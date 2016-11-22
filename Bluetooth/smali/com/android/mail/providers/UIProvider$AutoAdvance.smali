.class public final Lcom/android/mail/providers/UIProvider$AutoAdvance;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutoAdvance"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x3

.field public static final LIST:I = 0x3

.field public static final NEWER:I = 0x2

.field public static final OLDER:I = 0x1

.field public static final UNSET:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoAdvanceInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "autoAdvanceSetting"    # Ljava/lang/String;

    .prologue
    .line 2271
    const-string/jumbo v1, "newer"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2272
    const/4 v0, 0x2

    .line 2281
    .local v0, "autoAdvance":I
    :goto_0
    return v0

    .line 2273
    .end local v0    # "autoAdvance":I
    :cond_0
    const-string/jumbo v1, "older"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2274
    const/4 v0, 0x1

    .restart local v0    # "autoAdvance":I
    goto :goto_0

    .line 2275
    .end local v0    # "autoAdvance":I
    :cond_1
    const-string/jumbo v1, "list"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2276
    const/4 v0, 0x3

    .restart local v0    # "autoAdvance":I
    goto :goto_0

    .line 2278
    .end local v0    # "autoAdvance":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "autoAdvance":I
    goto :goto_0
.end method

.method public static getAutoAdvanceStr(I)Ljava/lang/String;
    .locals 1
    .param p0, "autoAdvance"    # I

    .prologue
    .line 2287
    packed-switch p0, :pswitch_data_0

    .line 2298
    const-string/jumbo v0, "unset"

    .line 2302
    .local v0, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2289
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "older"

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 2292
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "newer"

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 2295
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "list"

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 2287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
