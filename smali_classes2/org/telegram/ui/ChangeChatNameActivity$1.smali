.class Lorg/telegram/ui/ChangeChatNameActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChangeChatNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeChatNameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeChatNameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeChatNameActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 68
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->finishFragment()V

    .line 76
    :cond_8
    :goto_8
    return-void

    .line 70
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    # getter for: Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$000(Lorg/telegram/ui/ChangeChatNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    # invokes: Lorg/telegram/ui/ChangeChatNameActivity;->saveName()V
    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$100(Lorg/telegram/ui/ChangeChatNameActivity;)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->finishFragment()V

    goto :goto_8
.end method
