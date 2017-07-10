.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    .prologue
    .line 943
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I
    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1600(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    .line 947
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$query:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZ)V

    .line 949
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$query:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1800(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;)V

    .line 950
    return-void
.end method
