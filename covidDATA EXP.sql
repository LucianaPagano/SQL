Select * 
From PortafolioPROYECT.dbo.CovidDeaths$
Order by 3,4 

-- Porcentaje de probabilidad mortal
Select location, date, total_cases, new_cases, total_deaths, (total_deaths / total_cases)*100 as Death_Percentaje 
From PortafolioPROYECT.dbo.CovidDeaths$
Order by 1, 2 

-- Total Case vs Population 
Select location, date, total_cases, new_cases, population, (total_deaths /population)*100 as Infected_Percentaje 
From PortafolioPROYECT.dbo.CovidDeaths$
Order by 1, 2 

-- Which countries have the most infected
Select location, population, MAX(total_cases) as HighestInfectionCases, MAX((total_cases /population)*100) as HIGHInfected_Percentaje 
From PortafolioPROYECT.dbo.CovidDeaths$
Group by Location, Population 
Order by HIGHInfected_Percentaje desc

-- Highest Death by Population 
Select continent, MAX(cast(total_deaths as int)) as Highest_Mortality
From PortafolioPROYECT.dbo.CovidDeaths$
Group by continent
Order by Highest_Mortality desc

-- Global Numbers
Select date, SUM(new_cases) as total_new, SUM(cast(new_deaths as int)) as Total_Death, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DP 
From PortafolioPROYECT.dbo.CovidDeaths$
where continent is not null 
Group by date 

Select *
From PortafolioPROYECT.dbo.CovidDeaths$ dea
Join PortafolioPROYECT.dbo.CovidVaccinations$ vax
	On dea.location = vax.location
	and dea.date = vax.date

-- 
select dea.continent, dea.location, dea.date, dea.population, vax.new_vaccinations, Sum(convert(int, vax.new_vaccinations)) Over( Partition by dea.location order by dea.location, dea.Date)
From PortafolioPROYECT.dbo.CovidDeaths$ dea
Join PortafolioPROYECT.dbo.CovidVaccinations$ vax
	On dea.location = vax.location
	and dea.date = vax.date
where dea.continent is not null 
order by 2, 3 
