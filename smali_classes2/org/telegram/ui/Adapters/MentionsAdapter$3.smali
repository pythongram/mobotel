.class Lorg/telegram/ui/Adapters/MentionsAdapter$3;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method

.method public onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$500(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$500(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I
    invoke-static {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$600(Lorg/telegram/ui/Adapters/MentionsAdapter;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 134
    :cond_1f
    return-void
.end method
