.class Lorg/telegram/ui/NewContactActivity$3;
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
    .line 243
    iput-object p1, p0, Lorg/telegram/ui/NewContactActivity$3;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 246
    const/4 v0, 0x5

    if-ne p2, v0, :cond_21

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/NewContactActivity$3;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->lastNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/NewContactActivity;->access$500(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/NewContactActivity$3;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->lastNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/NewContactActivity;->access$500(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$3;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->lastNameField:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/NewContactActivity;->access$500(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 249
    const/4 v0, 0x1

    .line 251
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method
