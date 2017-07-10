.class Lorg/telegram/messenger/MessagesController$94;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->startShortPoll(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$channelId:I

.field final synthetic val$stop:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ZI)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 5301
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesController$94;->val$stop:Z

    iput p3, p0, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 5304
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$94;->val$stop:Z

    if-eqz v0, :cond_10

    .line 5305
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5312
    :cond_f
    :goto_f
    return-void

    .line 5307
    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5308
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_f

    .line 5309
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v2, p0, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    goto :goto_f
.end method
