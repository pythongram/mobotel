.class Lorg/telegram/messenger/MessagesStorage$61;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chats:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;

.field final synthetic val$withTransaction:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3919
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$61;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$61;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$61;->val$chats:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesStorage$61;->val$withTransaction:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3922
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$61;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$61;->val$users:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$61;->val$chats:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lorg/telegram/messenger/MessagesStorage$61;->val$withTransaction:Z

    # invokes: Lorg/telegram/messenger/MessagesStorage;->putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$1100(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 3923
    return-void
.end method
