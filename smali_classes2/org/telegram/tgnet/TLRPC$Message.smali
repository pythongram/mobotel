.class public Lorg/telegram/tgnet/TLRPC$Message;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$MessageAction;

.field public attachPath:Ljava/lang/String;

.field public date:I

.field public destroyTime:I

.field public dialog_id:J

.field public edit_date:I

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public from_id:I

.field public fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

.field public fwd_msg_id:I

.field public id:I

.field public layer:I

.field public local_id:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public media_unread:Z

.field public mentioned:Z

.field public message:Ljava/lang/String;

.field public out:Z

.field public params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public post:Z

.field public random_id:J

.field public replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

.field public reply_to_msg_id:I

.field public reply_to_random_id:J

.field public send_state:I

.field public seq_in:I

.field public seq_out:I

.field public silent:Z

.field public to_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public ttl:I

.field public unread:Z

.field public via_bot_id:I

.field public via_bot_name:Ljava/lang/String;

.field public views:I

.field public with_my_score:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24675
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 24690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 24699
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 24700
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    .line 24701
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 24704
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 24715
    const/4 v0, 0x0

    .line 24716
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Message;
    sparse-switch p1, :sswitch_data_92

    .line 24772
    :goto_4
    if-nez v0, :cond_8b

    if-eqz p2, :cond_8b

    .line 24773
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in Message"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24718
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;-><init>()V

    .line 24719
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24721
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old3;-><init>()V

    .line 24722
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24724
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old4;-><init>()V

    .line 24725
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24727
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .line 24728
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24730
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 24731
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24733
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;-><init>()V

    .line 24734
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24736
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old7;-><init>()V

    .line 24737
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24739
    :sswitch_48
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;-><init>()V

    .line 24740
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24742
    :sswitch_4e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;-><init>()V

    .line 24743
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24745
    :sswitch_54
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old6;-><init>()V

    .line 24746
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24748
    :sswitch_5a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;-><init>()V

    .line 24749
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24751
    :sswitch_60
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old;-><init>()V

    .line 24752
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24754
    :sswitch_66
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old2;-><init>()V

    .line 24755
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24757
    :sswitch_6c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_old;-><init>()V

    .line 24758
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24760
    :sswitch_72
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old;-><init>()V

    .line 24761
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24763
    :sswitch_78
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;-><init>()V

    .line 24764
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24766
    :sswitch_7e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 24767
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4

    .line 24769
    :sswitch_84
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old5;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old5;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_4

    .line 24775
    :cond_8b
    if-eqz v0, :cond_90

    .line 24776
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Message;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 24778
    :cond_90
    return-object v0

    .line 24716
    nop

    :sswitch_data_92
    .sparse-switch
        -0x7c1a21ac -> :sswitch_4e
        -0x61e65e0a -> :sswitch_7e
        -0x60729f45 -> :sswitch_6c
        -0x5c9818ea -> :sswitch_5a
        -0x5854e66f -> :sswitch_24
        -0x3f9469f9 -> :sswitch_48
        -0x3f641ba1 -> :sswitch_36
        -0x3cf9fcdb -> :sswitch_2a
        -0x366d1ea4 -> :sswitch_3c
        -0xf87eb38 -> :sswitch_84
        0x5f46804 -> :sswitch_60
        0x1d86f70e -> :sswitch_1e
        0x22eb6aba -> :sswitch_72
        0x2bebfa86 -> :sswitch_54
        0x555555f8 -> :sswitch_78
        0x555555f9 -> :sswitch_30
        0x567699b3 -> :sswitch_66
        0x5ba66c13 -> :sswitch_42
    .end sparse-switch
.end method
