.class Lorg/telegram/messenger/MessagesController$101$1$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$101$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$101$1;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$101$1;Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/messenger/MessagesController$101$1;

    .prologue
    .line 6204
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$101$1$1;->this$2:Lorg/telegram/messenger/MessagesController$101$1;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$101$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 6207
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$101$1$1;->this$2:Lorg/telegram/messenger/MessagesController$101$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$101$1;->this$1:Lorg/telegram/messenger/MessagesController$101;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$101;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$101$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 6208
    return-void
.end method
