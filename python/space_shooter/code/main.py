import pygame

pygame.init()
height, width = 600,400
display_surface = pygame.display.set_mode((height,width))
running = True

while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

pygame.quit()