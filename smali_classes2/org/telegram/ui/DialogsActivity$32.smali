.class Lorg/telegram/ui/DialogsActivity$32;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$tabsToBottom:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 2224
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$32;->val$tabsToBottom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 2227
    const/16 v0, 0x64

    .line 2228
    .local v0, "i":I
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$32;->val$tabsToBottom:Z

    if-eqz v1, :cond_4d

    .line 2229
    const/16 v0, 0x96

    .line 2233
    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_50

    int-to-float v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    :goto_1c
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 2234
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-nez v1, :cond_52

    const/4 v1, 0x1

    :goto_2e
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2235
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 2236
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_54

    .line 2237
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2242
    :cond_4c
    :goto_4c
    return-void

    .line 2231
    :cond_4d
    const/16 v0, 0x64

    goto :goto_8

    .line 2233
    :cond_50
    const/4 v1, 0x0

    goto :goto_1c

    .line 2234
    :cond_52
    const/4 v1, 0x0

    goto :goto_2e

    .line 2239
    :cond_54
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_4c
.end method
