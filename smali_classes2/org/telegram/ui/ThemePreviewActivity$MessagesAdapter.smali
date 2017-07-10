.class public Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessagesAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .registers 13
    .param p1, "this$0"    # Lorg/telegram/ui/ThemePreviewActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 579
    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    .line 580
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    add-int/lit16 v1, v6, -0xe10

    .line 586
    .local v1, "date":I
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 587
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    const-string v6, "Reinhardt, we need to find you some new tunes \ud83c\udfb6."

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 588
    add-int/lit8 v6, v1, 0x3c

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 589
    const-wide/16 v6, 0x1

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 590
    const/16 v6, 0x103

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 591
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 592
    const/4 v6, 0x1

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 593
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 594
    const/4 v6, 0x1

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 595
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 596
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 597
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v2, v6, v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 599
    .local v5, "replyMessageObject":Lorg/telegram/messenger/MessageObject;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 600
    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    const-string v6, "I can\'t even take you seriously right now."

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 601
    add-int/lit16 v6, v1, 0x3c0

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 602
    const-wide/16 v6, 0x1

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 603
    const/16 v6, 0x103

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 604
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 605
    const/4 v6, 0x1

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 606
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 607
    const/4 v6, 0x1

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 608
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 609
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 611
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/messenger/MessageObject;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v7, v2, v8, v9}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 614
    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    add-int/lit16 v6, v1, 0x82

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 615
    const-wide/16 v6, 0x1

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 616
    const/16 v6, 0x103

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 617
    const/4 v6, 0x0

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 618
    const/4 v6, 0x5

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 619
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 620
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 621
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v7, "audio/mp4"

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 622
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 623
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v7, "s"

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 624
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 625
    .local v0, "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    const/16 v6, 0xf3

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 626
    const-string v6, "David Hasselhoff"

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 627
    const-string v6, "True Survivor"

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 628
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    const/4 v6, 0x0

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 630
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 631
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 632
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/messenger/MessageObject;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v7, v2, v8, v9}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 635
    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    const-string v6, "Ah, you kids today with techno music! You should enjoy the classics, like Hasselhoff!"

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 636
    add-int/lit8 v6, v1, 0x3c

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 637
    const-wide/16 v6, 0x1

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 638
    const/16 v6, 0x109

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 639
    const/4 v6, 0x0

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 640
    const/4 v6, 0x1

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 641
    const/4 v6, 0x5

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 642
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 643
    const/4 v6, 0x0

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 644
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 645
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 646
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v3, v2, v6, v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 647
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    const-string v6, "Lucio"

    iput-object v6, v3, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    .line 648
    iput-object v5, v3, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 649
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 652
    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    add-int/lit8 v6, v1, 0x78

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 653
    const-wide/16 v6, 0x1

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 654
    const/16 v6, 0x103

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 655
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 656
    const/4 v6, 0x1

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 657
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 658
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 659
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v7, "audio/ogg"

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 660
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 661
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v7, "s"

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 662
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    .end local v0    # "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 663
    .restart local v0    # "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    const/16 v6, 0x404

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 664
    const/4 v6, 0x3

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 665
    const/4 v6, 0x1

    iput-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    .line 666
    const/16 v6, 0x3f

    new-array v6, v6, [B

    fill-array-data v6, :array_2a2

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->waveform:[B

    .line 669
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    const/4 v6, 0x1

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 671
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 672
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 673
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v3, v2, v6, v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 674
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v6, 0x1

    iput v6, v3, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 675
    const v6, 0x3e99999a

    iput v6, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 676
    const/4 v6, 0x1

    iput-boolean v6, v3, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    .line 677
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 682
    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    add-int/lit8 v6, v1, 0xa

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 683
    const-wide/16 v6, 0x1

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 684
    const/16 v6, 0x101

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 685
    const/4 v6, 0x0

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 686
    const/4 v6, 0x1

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 687
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 688
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 689
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    .line 690
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const-wide/16 v8, 0x1

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    .line 691
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    .line 692
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    .line 693
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 694
    .local v4, "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    .line 695
    const/16 v6, 0x1f4

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 696
    const/16 v6, 0x12e

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    .line 697
    const-string v6, "s"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 698
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 699
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string v7, "Bring it on! I LIVE for this!"

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 701
    const/4 v6, 0x0

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 702
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 703
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 704
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v3, v2, v6, v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 705
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v6, 0x1

    iput-boolean v6, v3, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    .line 706
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    new-instance v2, Lorg/telegram/tgnet/TLRPC$Message;

    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    .line 709
    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    int-to-long v6, v1

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 710
    const/4 v6, 0x0

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 711
    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 712
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v2, v6, v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 713
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v6, 0xa

    iput v6, v3, Lorg/telegram/messenger/MessageObject;->type:I

    .line 714
    const/4 v6, 0x1

    iput v6, v3, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 715
    const/4 v6, 0x1

    iput-boolean v6, v3, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    .line 716
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    return-void

    .line 666
    :array_2a2
    .array-data 1
        0x0t
        0x4t
        0x11t
        -0x32t
        -0x5dt
        0x56t
        -0x67t
        -0x2dt
        -0xct
        -0x1at
        0x3ft
        -0x19t
        -0x3t
        0x6dt
        -0x72t
        -0x36t
        -0x4t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1dt
        -0x1t
        -0x1t
        -0x19t
        -0x1t
        -0x1t
        -0x61t
        -0x2bt
        0x39t
        -0x39t
        -0x6ct
        0x1t
        -0x5bt
        -0x4t
        -0x2ft
        0x15t
        0x63t
        0xat
        0x61t
        0x2bt
        0x2dt
        0x73t
        -0x70t
        -0x4dt
        0x33t
        -0x3ft
        0x42t
        0x28t
        0x22t
        -0x7at
        -0x74t
        0x30t
        -0x7ct
        0x10t
        0x42t
        -0x78t
        0x10t
        0x44t
        0x10t
        0x21t
        0x4t
        0x1t
    .end array-data
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 721
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 894
    if-ltz p1, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 897
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x4

    goto :goto_14
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 15
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 861
    iget-object v10, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 862
    .local v1, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v9, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 864
    .local v9, "view":Landroid/view/View;
    instance-of v10, v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v10, :cond_98

    move-object v2, v9

    .line 865
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 866
    .local v2, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    const/4 v10, 0x0

    iput-boolean v10, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 867
    add-int/lit8 v10, p2, -0x1

    invoke-virtual {p0, v10}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->getItemViewType(I)I

    move-result v4

    .line 868
    .local v4, "nextType":I
    add-int/lit8 v10, p2, 0x1

    invoke-virtual {p0, v10}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->getItemViewType(I)I

    move-result v8

    .line 871
    .local v8, "prevType":I
    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v10, :cond_92

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    if-ne v4, v10, :cond_92

    .line 872
    iget-object v10, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    add-int/lit8 v11, p2, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 873
    .local v3, "nextMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v10

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v11

    if-ne v10, v11, :cond_90

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v11, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0x12c

    if-gt v10, v11, :cond_90

    const/4 v5, 0x1

    .line 877
    .end local v3    # "nextMessage":Lorg/telegram/messenger/MessageObject;
    .local v5, "pinnedBotton":Z
    :goto_54
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    if-ne v8, v10, :cond_96

    .line 878
    iget-object v10, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    add-int/lit8 v11, p2, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 879
    .local v7, "prevMessage":Lorg/telegram/messenger/MessageObject;
    iget-object v10, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v10, :cond_94

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v10

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v11

    if-ne v10, v11, :cond_94

    iget-object v10, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v11, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0x12c

    if-gt v10, v11, :cond_94

    const/4 v6, 0x1

    .line 883
    .end local v7    # "prevMessage":Lorg/telegram/messenger/MessageObject;
    .local v6, "pinnedTop":Z
    :goto_88
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->setFullyDraw(Z)V

    .line 884
    invoke-virtual {v2, v1, v5, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)V

    .line 890
    .end local v2    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v4    # "nextType":I
    .end local v5    # "pinnedBotton":Z
    .end local v6    # "pinnedTop":Z
    .end local v8    # "prevType":I
    :cond_8f
    :goto_8f
    return-void

    .line 873
    .restart local v2    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v3    # "nextMessage":Lorg/telegram/messenger/MessageObject;
    .restart local v4    # "nextType":I
    .restart local v8    # "prevType":I
    :cond_90
    const/4 v5, 0x0

    goto :goto_54

    .line 875
    .end local v3    # "nextMessage":Lorg/telegram/messenger/MessageObject;
    :cond_92
    const/4 v5, 0x0

    .restart local v5    # "pinnedBotton":Z
    goto :goto_54

    .line 879
    .restart local v7    # "prevMessage":Lorg/telegram/messenger/MessageObject;
    :cond_94
    const/4 v6, 0x0

    goto :goto_88

    .line 881
    .end local v7    # "prevMessage":Lorg/telegram/messenger/MessageObject;
    :cond_96
    const/4 v6, 0x0

    .restart local v6    # "pinnedTop":Z
    goto :goto_88

    .line 885
    .end local v2    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v4    # "nextType":I
    .end local v5    # "pinnedBotton":Z
    .end local v6    # "pinnedTop":Z
    .end local v8    # "prevType":I
    :cond_98
    instance-of v10, v9, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v10, :cond_8f

    move-object v0, v9

    .line 886
    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 887
    .local v0, "actionCell":Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 888
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Cells/ChatActionCell;->setAlpha(F)V

    goto :goto_8f
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 8
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 731
    const/4 v1, 0x0

    .line 732
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_25

    .line 733
    new-instance v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    move-object v0, v1

    .line 734
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 735
    .local v0, "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 855
    .end local v0    # "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    :cond_15
    :goto_15
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 826
    :cond_25
    const/4 v2, 0x1

    if-ne p2, v2, :cond_15

    .line 827
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    move-object v2, v1

    .line 828
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto :goto_15
.end method
