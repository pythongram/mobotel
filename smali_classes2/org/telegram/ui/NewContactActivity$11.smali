.class Lorg/telegram/ui/NewContactActivity$11;
.super Ljava/lang/Object;
.source "NewContactActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NewContactActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NewContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NewContactActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/NewContactActivity;

    .prologue
    .line 550
    iput-object p1, p0, Lorg/telegram/ui/NewContactActivity$11;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 553
    const/4 v0, 0x6

    if-ne p2, v0, :cond_e

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/NewContactActivity$11;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->editDoneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/NewContactActivity;->access$1700(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->performClick()Z

    .line 555
    const/4 v0, 0x1

    .line 557
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
