.class Lorg/telegram/messenger/MessagesController$114;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$arrayList:Ljava/util/ArrayList;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 8058
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$114;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$114;->val$arrayList:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/MessagesController$114;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 8060
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$114;->val$arrayList:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$114;->val$arrayList:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/messenger/MessagesController$114;->val$key:I

    invoke-virtual {v2, v3, v5, v4}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/MessagesController$114;->val$key:I

    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    .line 8061
    return-void
.end method
