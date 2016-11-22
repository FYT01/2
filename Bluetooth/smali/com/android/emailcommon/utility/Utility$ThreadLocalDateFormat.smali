.class Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;
.super Ljava/lang/ThreadLocal;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadLocalDateFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFormatStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "formatStr"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;->mFormatStr:Ljava/lang/String;

    .line 217
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;->initialValue()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 223
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;->mFormatStr:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string/jumbo v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 225
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 226
    return-object v1
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-super {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
