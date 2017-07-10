.class Lorg/telegram/messenger/MessagesController$20;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->didAddedNewTask(ILandroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$minDate:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1752
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$20;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$20;->val$minDate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1755
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$20;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$2900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$20;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$3000(Lorg/telegram/messenger/MessagesController;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$20;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$3100(Lorg/telegram/messenger/MessagesController;)I

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Lorg/telegram/messenger/MessagesController$20;->val$minDate:I

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$20;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$3100(Lorg/telegram/messenger/MessagesController;)I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 1756
    :cond_22
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$20;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getNewDeleteTask(Ljava/util/ArrayList;)V

    .line 1758
    :cond_28
    return-void
.end method
