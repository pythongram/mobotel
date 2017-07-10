.class Lorg/telegram/ui/Telehgram/UpdateActivity$5;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/UpdateActivity;->showFilterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/UpdateActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;

    .prologue
    .line 272
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$5;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 275
    if-nez p2, :cond_21

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$5;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    # getter for: Lorg/telegram/ui/Telehgram/UpdateActivity;->filterItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$500(Lorg/telegram/ui/Telehgram/UpdateActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 280
    :goto_10
    if-nez p2, :cond_2e

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$5;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/UpdateActivity;->currentFilterType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$602(Lorg/telegram/ui/Telehgram/UpdateActivity;I)I

    .line 289
    :cond_18
    :goto_18
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$5;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    # invokes: Lorg/telegram/ui/Telehgram/UpdateActivity;->forceReload()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$100(Lorg/telegram/ui/Telehgram/UpdateActivity;)V

    .line 290
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 291
    return-void

    .line 278
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$5;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    # getter for: Lorg/telegram/ui/Telehgram/UpdateActivity;->filterItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$500(Lorg/telegram/ui/Telehgram/UpdateActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_10

    .line 282
    :cond_2e
    const/4 v0, 0x1

    if-ne p2, v0, :cond_37

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$5;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    # setter for: Lorg/telegram/ui/Telehgram/UpdateActivity;->currentFilterType:I
    invoke-static {v0, v2}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$602(Lorg/telegram/ui/Telehgram/UpdateActivity;I)I

    goto :goto_18

    .line 284
    :cond_37
    if-ne p2, v2, :cond_3f

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$5;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    # setter for: Lorg/telegram/ui/Telehgram/UpdateActivity;->currentFilterType:I
    invoke-static {v0, v3}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$602(Lorg/telegram/ui/Telehgram/UpdateActivity;I)I

    goto :goto_18

    .line 286
    :cond_3f
    if-ne p2, v3, :cond_18

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$5;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    const/4 v1, 0x4

    # setter for: Lorg/telegram/ui/Telehgram/UpdateActivity;->currentFilterType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$602(Lorg/telegram/ui/Telehgram/UpdateActivity;I)I

    goto :goto_18
.end method
