.class public Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "messages_Dialogs"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

.field public dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20033
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 20034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    .line 20035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    .line 20036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    .line 20037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 20041
    const/4 v0, 0x0

    .line 20042
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    sparse-switch p1, :sswitch_data_30

    .line 20050
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 20051
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in messages_Dialogs"

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

    .line 20044
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;-><init>()V

    .line 20045
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    goto :goto_4

    .line 20047
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    goto :goto_4

    .line 20053
    :cond_2a
    if-eqz v0, :cond_2f

    .line 20054
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 20056
    :cond_2f
    return-object v0

    .line 20042
    :sswitch_data_30
    .sparse-switch
        0x15ba6c40 -> :sswitch_1e
        0x71e094f3 -> :sswitch_24
    .end sparse-switch
.end method
