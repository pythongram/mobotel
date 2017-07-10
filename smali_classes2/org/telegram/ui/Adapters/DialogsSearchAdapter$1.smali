.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 160
    return-void
.end method

.method public onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 6
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
    .line 164
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 165
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$100(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_1b
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 168
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    .line 170
    :cond_2d
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 171
    return-void
.end method
