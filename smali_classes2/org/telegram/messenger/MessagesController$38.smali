.class Lorg/telegram/messenger/MessagesController$38;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$did:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;J)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 2284
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$38;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$38;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2287
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$38;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$38;->val$did:J

    long-to-int v1, v2

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$38;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$38;->val$did:J

    long-to-int v1, v2

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2289
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$38;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$38;->val$did:J

    long-to-int v1, v2

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2290
    return-void
.end method
