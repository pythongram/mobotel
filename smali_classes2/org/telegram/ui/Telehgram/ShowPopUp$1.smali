.class Lorg/telegram/ui/Telehgram/ShowPopUp$1;
.super Ljava/lang/Object;
.source "ShowPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ShowPopUp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ShowPopUp;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ShowPopUp;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/ShowPopUp;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShowPopUp$1;->this$0:Lorg/telegram/ui/Telehgram/ShowPopUp;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/ShowPopUp$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShowPopUp$1;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ShowPopUp$1;->this$0:Lorg/telegram/ui/Telehgram/ShowPopUp;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Telehgram/ShowPopUp;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method
