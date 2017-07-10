.class Lorg/telegram/ui/LoginActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LoginActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 156
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->currentViewNum:I
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$100(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onNextPressed()V

    .line 161
    :cond_14
    :goto_14
    return-void

    .line 158
    :cond_15
    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity;->onBackPressed()Z

    goto :goto_14
.end method
