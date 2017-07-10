.class Lorg/telegram/ui/ChatActivity$9$3;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$9;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$9;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$9;

    .prologue
    .line 1263
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$9$3;->this$1:Lorg/telegram/ui/ChatActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$9$3;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$9$3;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->fastDelete:Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    :goto_f
    # setter for: Lorg/telegram/ui/ChatActivity;->fastDelete:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$1102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$9$3;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$9$3;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 1269
    return-void

    .line 1266
    :cond_2d
    const/4 v0, 0x0

    goto :goto_f
.end method
