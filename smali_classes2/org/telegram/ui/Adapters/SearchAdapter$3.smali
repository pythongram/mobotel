.class Lorg/telegram/ui/Adapters/SearchAdapter$3;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapter;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 120
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapter;->allowUsernameSearch:Z
    invoke-static {v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$200(Lorg/telegram/ui/Adapters/SearchAdapter;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$500(Lorg/telegram/ui/Adapters/SearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->val$query:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapter;->allowChats:Z
    invoke-static {v3}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$300(Lorg/telegram/ui/Adapters/SearchAdapter;)Z

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapter;->allowBots:Z
    invoke-static {v4}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$400(Lorg/telegram/ui/Adapters/SearchAdapter;)Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZ)V

    .line 123
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "contactsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Adapters/SearchAdapter$3$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Adapters/SearchAdapter$3$1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter$3;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method
