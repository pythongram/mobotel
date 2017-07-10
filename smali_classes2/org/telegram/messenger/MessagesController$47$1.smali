.class Lorg/telegram/messenger/MessagesController$47$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$47;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$47;

.field final synthetic val$channelViews:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$47;Landroid/util/SparseArray;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$47;

    .prologue
    .line 2590
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$47$1;->this$1:Lorg/telegram/messenger/MessagesController$47;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$47$1;->val$channelViews:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2593
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatedMessagesViews:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$47$1;->val$channelViews:Landroid/util/SparseArray;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2594
    return-void
.end method
