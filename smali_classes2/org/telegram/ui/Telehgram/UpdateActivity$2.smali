.class Lorg/telegram/ui/Telehgram/UpdateActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/UpdateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
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
    .line 100
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$2;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 103
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$2;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->finishFragment()V

    .line 110
    :cond_8
    :goto_8
    return-void

    .line 105
    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$2;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    # invokes: Lorg/telegram/ui/Telehgram/UpdateActivity;->showDeleteHistoryConfirmation()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$200(Lorg/telegram/ui/Telehgram/UpdateActivity;)V

    goto :goto_8

    .line 107
    :cond_12
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$2;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->showFilterDialog()V

    goto :goto_8
.end method
