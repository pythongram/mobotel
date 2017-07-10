.class Lorg/telegram/ui/DialogsActivity$24$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$24;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$24;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$24;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/DialogsActivity$24;

    .prologue
    .line 1541
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$24$1;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$24$1;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1545
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$24$1;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentSearch()V

    .line 1549
    :goto_19
    return-void

    .line 1547
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$24$1;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentHashtags()V

    goto :goto_19
.end method
