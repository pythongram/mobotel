.class Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$1;
.super Ljava/lang/Object;
.source "GroupCreateActivity.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

.field final synthetic val$this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Lorg/telegram/ui/GroupCreateActivity;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    .prologue
    .line 796
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$1;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    iput-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$1;->val$this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .registers 2

    .prologue
    .line 799
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$1;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    .line 800
    return-void
.end method

.method public onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 3
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
    .line 805
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    return-void
.end method
