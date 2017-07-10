.class Lorg/telegram/messenger/MessagesController$96$2$2$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$96$2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/MessagesController$96$2$2;

.field final synthetic val$messages:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$96$2$2;Ljava/util/HashMap;)V
    .registers 3
    .param p1, "this$3"    # Lorg/telegram/messenger/MessagesController$96$2$2;

    .prologue
    .line 5777
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$96$2$2$1;->this$3:Lorg/telegram/messenger/MessagesController$96$2$2;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$96$2$2$1;->val$messages:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 5780
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$96$2$2$1;->val$messages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5781
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5782
    .local v0, "key":Ljava/lang/Long;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 5783
    .local v2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$96$2$2$1;->this$3:Lorg/telegram/messenger/MessagesController$96$2$2;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$96$2$2;->this$2:Lorg/telegram/messenger/MessagesController$96$2;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$96$2;->this$1:Lorg/telegram/messenger/MessagesController$96;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$96;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    goto :goto_a

    .line 5785
    .end local v0    # "key":Ljava/lang/Long;
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v2    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_32
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5786
    return-void
.end method
