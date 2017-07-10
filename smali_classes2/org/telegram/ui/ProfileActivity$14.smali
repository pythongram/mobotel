.class Lorg/telegram/ui/ProfileActivity$14;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->processOnClickOrPress(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 1110
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$14;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$14;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1113
    if-nez p2, :cond_2a

    .line 1115
    :try_start_2
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1116
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v3, "label"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$14;->val$username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1117
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 1122
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :cond_2a
    :goto_2a
    return-void

    .line 1118
    :catch_2b
    move-exception v2

    .line 1119
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2a
.end method
