.class public Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;
.super Landroid/app/Activity;
.source "FilterActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final REQUEST_CODE:I = -0xf69b5


# instance fields
.field alpha:I

.field alphaSeek:Landroid/widget/SeekBar;

.field apply:Landroid/widget/Button;

.field blue:I

.field blueSeek:Landroid/widget/SeekBar;

.field cancel:Landroid/widget/Button;

.field green:I

.field greenSeek:Landroid/widget/SeekBar;

.field red:I

.field redSeek:Landroid/widget/SeekBar;

.field shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->stopServiceIfActive()V

    .line 57
    new-instance v0, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    .line 59
    const v0, 0x7f0e0092

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->alphaSeek:Landroid/widget/SeekBar;

    .line 60
    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->redSeek:Landroid/widget/SeekBar;

    .line 61
    const v0, 0x7f0e0096

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->greenSeek:Landroid/widget/SeekBar;

    .line 62
    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->blueSeek:Landroid/widget/SeekBar;

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->alphaSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->redSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->greenSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->blueSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->getAlpha()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->alpha:I

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->getRed()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->red:I

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->getGreen()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->green:I

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->getBlue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->blue:I

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->alphaSeek:Landroid/widget/SeekBar;

    iget v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->alpha:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->redSeek:Landroid/widget/SeekBar;

    iget v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->red:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->greenSeek:Landroid/widget/SeekBar;

    iget v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->green:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->blueSeek:Landroid/widget/SeekBar;

    iget v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->blue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 78
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->updateColor()V

    .line 80
    return-void
.end method

.method private makeNotification()V
    .registers 8

    .prologue
    .line 144
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    const v5, 0x7f020130

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 146
    const-string v5, "ChangeTheScreenLights"

    const v6, 0x7f070671

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 147
    const-string v5, "Active"

    const v6, 0x7f070639

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 148
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 149
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v2, "resultIntent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v4

    .line 151
    .local v4, "stackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    const-class v5, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 152
    invoke-virtual {v4, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 153
    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    .line 154
    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v3

    .line 158
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 159
    const-string v5, "notification"

    .line 160
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 161
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v5, 0x355

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 162
    return-void
.end method

.method private stopServiceIfActive()V
    .registers 3

    .prologue
    .line 83
    sget v1, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->STATE:I

    if-nez v1, :cond_e

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/Telehgram/filterScreen/MainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->stopService(Landroid/content/Intent;)Z

    .line 87
    .end local v0    # "i":Landroid/content/Intent;
    :cond_e
    return-void
.end method

.method private updateColor()V
    .registers 7

    .prologue
    .line 108
    iget v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->alpha:I

    iget v3, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->red:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->green:I

    iget v5, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->blue:I

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->getColor(IIII)I

    move-result v1

    .line 109
    .local v1, "color":I
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 110
    .local v0, "cd":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    return-void
.end method


# virtual methods
.method public applyClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_a

    .line 125
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->checkDrawOverlayPermission()V

    .line 141
    :goto_9
    return-void

    .line 129
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->alpha:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setAlpha(I)V

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->red:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setRed(I)V

    .line 131
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->green:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setGreen(I)V

    .line 132
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->blue:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setBlue(I)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/Telehgram/filterScreen/MainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->makeNotification()V

    .line 138
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->finish()V

    goto :goto_9
.end method

.method public cancelClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->finish()V

    .line 121
    return-void
.end method

.method public checkDrawOverlayPermission()V
    .registers 6

    .prologue
    .line 167
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_34

    .line 168
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 171
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v1, "intent":Landroid/content/Intent;
    const v2, -0xf69b5

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 188
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_34
    :goto_34
    return-void

    .line 176
    :cond_35
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v3, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->alpha:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setAlpha(I)V

    .line 177
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v3, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->red:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setRed(I)V

    .line 178
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v3, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->green:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setGreen(I)V

    .line 179
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v3, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->blue:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setBlue(I)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/Telehgram/filterScreen/MainService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 184
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->makeNotification()V

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->finish()V

    goto :goto_34
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 194
    const v1, -0xf69b5

    if-ne p1, v1, :cond_3d

    .line 195
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3d

    .line 196
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 197
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->alpha:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setAlpha(I)V

    .line 198
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->red:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setRed(I)V

    .line 199
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->green:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setGreen(I)V

    .line 200
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    iget v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->blue:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->setBlue(I)V

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/Telehgram/filterScreen/MainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 205
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->makeNotification()V

    .line 206
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->finish()V

    .line 210
    .end local v0    # "i":Landroid/content/Intent;
    :cond_3d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->apply:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->cancel:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->cancel:Landroid/widget/Button;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->apply:Landroid/widget/Button;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->initialize()V

    .line 51
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->alphaSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_a

    .line 93
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->alpha:I

    .line 95
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->redSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_14

    .line 96
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->red:I

    .line 98
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->greenSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1e

    .line 99
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->green:I

    .line 101
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->blueSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_28

    .line 102
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->blue:I

    .line 104
    :cond_28
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;->updateColor()V

    .line 105
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 40
    const-string v0, "Filter Screen Activity"

    invoke-static {v0}, Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;->sendScreenName(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "sb"    # Landroid/widget/SeekBar;

    .prologue
    .line 114
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "sb"    # Landroid/widget/SeekBar;

    .prologue
    .line 117
    return-void
.end method
