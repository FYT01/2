.class public Lcom/android/emailcommon/utility/ConversionUtilities;
.super Ljava/lang/Object;
.source "ConversionUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    return-object p0

    .line 38
    :cond_0
    if-nez p0, :cond_1

    .line 39
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 46
    .restart local p0    # "sb":Ljava/lang/StringBuffer;
    :goto_0
    return-object p0

    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 42
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static parseBodyFields(Ljava/util/ArrayList;)Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)",
            "Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/ConversionUtilities;->parseBodyFields(Ljava/util/ArrayList;Z)Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;

    move-result-object v0

    return-object v0
.end method

.method public static parseBodyFields(Ljava/util/ArrayList;Z)Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
    .locals 9
    .param p1, "closeInputs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;Z)",
            "Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;-><init>()V

    .line 75
    .local v0, "data":Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
    const/4 v2, 0x0

    .line 76
    .local v2, "sbHtml":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 78
    .local v3, "sbText":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v2    # "sbHtml":Ljava/lang/StringBuffer;
    .end local v3    # "sbText":Ljava/lang/StringBuffer;
    .local v6, "viewable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/mail/Part;

    .line 79
    .local v5, "viewable":Lcom/android/emailcommon/mail/Part;
    invoke-static {v5, p1}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;Z)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "text":Ljava/lang/String;
    const-string/jumbo v7, "text/html"

    invoke-interface {v5}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 84
    .local v1, "isHtml":Z
    if-eqz v1, :cond_0

    .line 85
    invoke-static {v2, v4}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .local v2, "sbHtml":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 87
    .end local v2    # "sbHtml":Ljava/lang/StringBuffer;
    :cond_0
    invoke-static {v3, v4}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .local v3, "sbText":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 92
    .end local v1    # "isHtml":Z
    .end local v3    # "sbText":Ljava/lang/StringBuffer;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "viewable":Lcom/android/emailcommon/mail/Part;
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .restart local v4    # "text":Ljava/lang/String;
    iput-object v4, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->textContent:Ljava/lang/String;

    .line 95
    invoke-static {v4}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->snippet:Ljava/lang/String;

    .line 97
    .end local v4    # "text":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    .restart local v4    # "text":Ljava/lang/String;
    iput-object v4, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlContent:Ljava/lang/String;

    .line 100
    iget-object v7, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->snippet:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 101
    invoke-static {v4}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->snippet:Ljava/lang/String;

    .line 104
    .end local v4    # "text":Ljava/lang/String;
    :cond_3
    return-object v0
.end method
