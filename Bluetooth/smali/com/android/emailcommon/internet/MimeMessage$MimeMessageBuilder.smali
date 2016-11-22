.class Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;
.super Ljava/lang/Object;
.source "MimeMessage.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/internet/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MimeMessageBuilder"
.end annotation


# instance fields
.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/emailcommon/internet/MimeMessage;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/internet/MimeMessage;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/emailcommon/internet/MimeMessage;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    .line 542
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    const-string/jumbo v2, "\' found \'"

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    const-string/jumbo v2, "\'"

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "bd"    # Lorg/apache/james/mime4j/BodyDescriptor;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    const-class v2, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v2}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 612
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/emailcommon/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/emailcommon/mail/Body;

    move-result-object v0

    .line 614
    .local v0, "body":Lcom/android/emailcommon/mail/Body;
    :try_start_0
    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/Part;

    invoke-interface {v2, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    return-void

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "me":Lcom/android/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 640
    const-class v0, Lcom/android/emailcommon/mail/BodyPart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 641
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 639
    return-void
.end method

.method public endHeader()V
    .locals 1

    .prologue
    .line 592
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 591
    return-void
.end method

.method public endMessage()V
    .locals 1

    .prologue
    .line 570
    const-class v0, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 571
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 569
    return-void
.end method

.method public endMultipart()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 621
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    const-class v2, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 650
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 645
    :cond_0
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 5
    .param p1, "fieldData"    # Ljava/lang/String;

    .prologue
    .line 581
    const-class v2, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v2}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 583
    :try_start_0
    const-string/jumbo v2, ":"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "tokens":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/Part;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/emailcommon/mail/Part;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    return-void

    .line 585
    .end local v1    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 586
    .local v0, "me":Lcom/android/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    const-class v3, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v3}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 662
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 665
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/internet/MimeMultipart;->setPreamble(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    return-void

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "me":Lcom/android/emailcommon/mail/MessagingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 3

    .prologue
    .line 627
    const-class v2, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 630
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v0}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 631
    .local v0, "bodyPart":Lcom/android/emailcommon/internet/MimeBodyPart;
    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 632
    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    return-void

    .line 633
    .end local v0    # "bodyPart":Lcom/android/emailcommon/internet/MimeBodyPart;
    :catch_0
    move-exception v1

    .line 634
    .local v1, "me":Lcom/android/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startHeader()V
    .locals 1

    .prologue
    .line 576
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 575
    return-void
.end method

.method public startMessage()V
    .locals 4

    .prologue
    .line 554
    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/emailcommon/internet/MimeMessage;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :goto_0
    return-void

    .line 557
    :cond_0
    const-class v2, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v2}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 559
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v0}, Lcom/android/emailcommon/internet/MimeMessage;-><init>()V

    .line 560
    .local v0, "m":Lcom/android/emailcommon/internet/MimeMessage;
    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/Part;

    invoke-interface {v2, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 561
    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    .end local v0    # "m":Lcom/android/emailcommon/internet/MimeMessage;
    :catch_0
    move-exception v1

    .line 563
    .local v1, "me":Lcom/android/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 4
    .param p1, "bd"    # Lorg/apache/james/mime4j/BodyDescriptor;

    .prologue
    .line 597
    const-class v3, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v3}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 599
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 601
    .local v0, "e":Lcom/android/emailcommon/mail/Part;
    :try_start_0
    new-instance v2, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 602
    .local v2, "multiPart":Lcom/android/emailcommon/internet/MimeMultipart;
    invoke-interface {v0, v2}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 603
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    return-void

    .line 604
    .end local v2    # "multiPart":Lcom/android/emailcommon/internet/MimeMultipart;
    :catch_0
    move-exception v1

    .line 605
    .local v1, "me":Lcom/android/emailcommon/mail/MessagingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
