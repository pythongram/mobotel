.class Lorg/telegram/messenger/MessagesStorage$75;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->markMessagesAsRead(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$encryptedMessages:Ljava/util/HashMap;

.field final synthetic val$inbox:Landroid/util/SparseArray;

.field final synthetic val$outbox:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 5026
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$75;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$75;->val$inbox:Landroid/util/SparseArray;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$75;->val$outbox:Landroid/util/SparseArray;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$75;->val$encryptedMessages:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 5029
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$75;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$75;->val$inbox:Landroid/util/SparseArray;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$75;->val$outbox:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$75;->val$encryptedMessages:Ljava/util/HashMap;

    # invokes: Lorg/telegram/messenger/MessagesStorage;->markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$1600(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    .line 5030
    return-void
.end method
