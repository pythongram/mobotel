.class Lorg/telegram/messenger/MessagesController$112$3;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$112;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$112;

.field final synthetic val$update:Lorg/telegram/tgnet/TLRPC$Update;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$112;Lorg/telegram/tgnet/TLRPC$Update;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$112;

    .prologue
    .line 7759
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$112$3;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$112$3;->val$update:Lorg/telegram/tgnet/TLRPC$Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 7762
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$3;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$3;->val$update:Lorg/telegram/tgnet/TLRPC$Update;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    .line 7763
    return-void
.end method
