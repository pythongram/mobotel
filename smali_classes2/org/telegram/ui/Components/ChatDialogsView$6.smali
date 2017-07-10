.class Lorg/telegram/ui/Components/ChatDialogsView$6;
.super Ljava/lang/Object;
.source "ChatDialogsView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatDialogsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$6;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$6;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$200(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$6;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->disableLongCick:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$300(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 159
    :cond_10
    const/4 v0, 0x0

    .line 162
    :goto_11
    return v0

    .line 161
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$6;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    .line 162
    const/4 v0, 0x1

    goto :goto_11
.end method
